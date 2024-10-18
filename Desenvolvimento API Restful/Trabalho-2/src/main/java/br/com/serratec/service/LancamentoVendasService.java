package br.com.serratec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.serratec.DTO.LancamentoVendasResponseDTO;
import br.com.serratec.entity.LancamentoVendas;
import br.com.serratec.repository.LancamentoVendasRepository;

@Service
public class LancamentoVendasService {
	
	@Autowired
	private LancamentoVendasRepository repository;
	
	public LancamentoVendasResponseDTO listarPorId(Long id) {
		LancamentoVendas lancamentoVendas = repository.findById(id)
		.orElseThrow(() -> new RuntimeException("Venda não encontrada"));
		
		return new LancamentoVendasResponseDTO(lancamentoVendas.getData(),
				lancamentoVendas.getValor(),
				lancamentoVendas.getVendedor().getNome());
	}
	
	
	
}
	



