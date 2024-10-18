package br.com.serratec.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.serratec.DTO.LancamentoVendasResponseDTO;
import br.com.serratec.service.LancamentoVendasService;

@RestController
@RequestMapping("/vendas")
public class LancamentoVendasController {
	
	@Autowired
	private LancamentoVendasService service;
	
	@GetMapping("/{id}")
    public LancamentoVendasResponseDTO listarPorId(@PathVariable Long id) {
        return service.listarPorId(id);
    }
	
	
	
}
	
