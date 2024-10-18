package br.com.serratec.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.serratec.DTO.LancamentoVendasRequestDTO;
import br.com.serratec.DTO.LancamentoVendasResponseDTO;
import br.com.serratec.entity.LancamentoVendas;
import br.com.serratec.service.LancamentoVendasService;

@RestController
@RequestMapping("/vendas")
public class LancamentoVendasController {
	
	@Autowired
	private LancamentoVendasService service;
	
	@GetMapping("/{id}")
	public ResponseEntity<LancamentoVendasResponseDTO> listar(@PathVariable Long id){
		LancamentoVendasResponseDTO lancamentoDto = service.listaPorId(id);
		return ResponseEntity.status(HttpStatus.OK).body(lancamentoDto);
	}
	
	@GetMapping("/paginacao")
	public Page<LancamentoVendas> listar(@PageableDefault(page = 0, size = 50, 
	sort = "valor", direction = Direction.ASC) Pageable pageable) {
		return service.listarPorPagina(pageable);
	}
	
	@PostMapping
	public ResponseEntity<LancamentoVendasResponseDTO> inserirLancamento(@RequestBody LancamentoVendasRequestDTO dtos) {
		LancamentoVendasResponseDTO lancamentoDto = service.inserir(dtos);
		return new ResponseEntity<>(lancamentoDto, HttpStatus.CREATED);
	}
	
	
}
	
