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
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

@RestController
@RequestMapping("/vendas")
public class LancamentoVendasController {
	
	@Autowired
	private LancamentoVendasService service;
	
	@Operation(summary = "Lista as vendas pelo id", description = "A resposta lista as vendas com data, valor de venda e nome do vendedor.")
	@ApiResponses(value = { 
			@ApiResponse(responseCode = "200", 
			content = {@Content(schema = @Schema(implementation = LancamentoVendas.class), mediaType = "application/json")}),
			@ApiResponse(responseCode = "401", description = "Erro de autenticação"),
			@ApiResponse(responseCode = "403", description = "Não há permissão para acessar o recurso"),
			@ApiResponse(responseCode = "404", description = "Recurso não encontrado"),
			@ApiResponse(responseCode = "505", description = "Exceção interna da aplicação") })
	
	@GetMapping("/{id}")
	public ResponseEntity<LancamentoVendasResponseDTO> listar(@PathVariable Long id){
		LancamentoVendasResponseDTO lancamentoDto = service.listaPorId(id);
		return ResponseEntity.status(HttpStatus.OK).body(lancamentoDto);
	}
	
	
	@Operation(summary = "Lista as vendas por pagina", description = "A resposta retorna nome do vendedor, data e valor por paginação")
	@GetMapping("/paginacao")
	public Page<LancamentoVendas> listar(@PageableDefault(page = 0, size = 50, 
	sort = "valor", direction = Direction.ASC) Pageable pageable) {
		return service.listarPorPagina(pageable);
	}
	
	@Operation(summary = "Insere uma nova venda", description = "A resposta retorna nome do vendedor, data e valor.")
	@ApiResponses(value = { 
			@ApiResponse(responseCode = "201", 
			content = {@Content(schema = @Schema(implementation = LancamentoVendas.class), mediaType = "application/json")},
			description = "Venda cadastrado com sucesso"),
			@ApiResponse(responseCode = "401", description = "Erro de autenticação"),
			@ApiResponse(responseCode = "403", description = "Não há permissão para acessar o recurso"),
			@ApiResponse(responseCode = "404", description = "Recurso não encontrado"),
			@ApiResponse(responseCode = "505", description = "Exceção interna da aplicação") })
	@PostMapping
	public ResponseEntity<LancamentoVendasResponseDTO> inserirLancamento(@RequestBody LancamentoVendasRequestDTO dtos) {
		LancamentoVendasResponseDTO lancamentoDto = service.inserir(dtos);
		return new ResponseEntity<>(lancamentoDto, HttpStatus.CREATED);
	}
	
	
}
	
