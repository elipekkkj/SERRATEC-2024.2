package br.com.serratec.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import br.com.serratec.entity.Cliente;
import br.com.serratec.repository.ClienteRepository;
import jakarta.validation.Valid;

//Controller - Métodos
@RestController
@RequestMapping("/clientes")
public class ClienteController {
	
	@Autowired
	private ClienteRepository repository;
	
	@GetMapping
	public List<Cliente> listar(){
		return repository.findAll();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Cliente> retornaCliente(@PathVariable Long id) {
		Optional<Cliente> clienteOptional = repository.findById(id);
		if (clienteOptional.isEmpty()) {
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok(clienteOptional.get());
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Cliente inserir(@Valid @RequestBody Cliente c) {
		return repository.save(c);
	}
	
	@PutMapping("{id}")
	public ResponseEntity<Cliente> alterarCliente(@PathVariable Long id, @Valid @RequestBody Cliente c){
		if (repository.existsById(id)) {
			c.setId(id);
			return ResponseEntity.ok(repository.save(c));
		}
		return ResponseEntity.notFound().build();
	}
	
	@DeleteMapping("{id}")
	public ResponseEntity<Void> delete(@PathVariable Long id){
	if (repository.existsById(id)) {
		repository.deleteById(id);
		return ResponseEntity.noContent().build();
		}
	return ResponseEntity.notFound().build();
	}
	
}
