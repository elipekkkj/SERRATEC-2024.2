package br.com.serratec.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Service;

import br.com.serratec.DTO.LancamentoVendasRequestDTO;
import br.com.serratec.DTO.LancamentoVendasResponseDTO;
import br.com.serratec.entity.LancamentoVendas;
import br.com.serratec.entity.Vendedor;
import br.com.serratec.repository.LancamentoVendasRepository;
import br.com.serratec.repository.VendedorRepository;
import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;

@Service
public class LancamentoVendasService {
	
	@Autowired
	private LancamentoVendasRepository repository;
	
	@Autowired
	private VendedorRepository vRepository;
	
	public LancamentoVendasResponseDTO listaPorId(Long id) {
		LancamentoVendas lancamentos = repository.findById(id).orElse(null);
		if (lancamentos == null) {
		throw new EntityNotFoundException("Venda não existente");
		}
		return new LancamentoVendasResponseDTO(lancamentos);
	}
	
	@Transactional
	public LancamentoVendasResponseDTO inserir(LancamentoVendasRequestDTO dto) {
		Optional<Vendedor> vendedores = vRepository.findById(dto.getIdVendedor());
		LancamentoVendas lancamentos = new LancamentoVendas();
		if (vendedores.isPresent()) {
			lancamentos.setVendedor(vendedores.get());
		}
		else {
			throw new EntityNotFoundException("Vendedor não existente");
		}
		lancamentos.setData(dto.getData());
		lancamentos.setValor(dto.getValor());
		repository.save(lancamentos);
		
		return new LancamentoVendasResponseDTO(lancamentos);
	}
	
	public Page<LancamentoVendas> listarPorPagina(@PageableDefault Pageable pageable) {
		return repository.findAll(pageable);
	}
}


