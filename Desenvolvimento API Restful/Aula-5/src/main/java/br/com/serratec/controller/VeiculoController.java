package br.com.serratec.controller;

import java.util.List;

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

import br.com.serratec.entity.Veiculo;
import br.com.serratec.repository.VeiculoRepository;
import jakarta.validation.Valid;

@RestController
@RequestMapping("/veiculos")
public class VeiculoController {

	@Autowired
	private VeiculoRepository repository;
	
	@GetMapping
	public List<Veiculo> listar() {
		return repository.findAll();
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Veiculo inserir(@Valid @RequestBody Veiculo v) {
		return repository.save(v);
	}
	
	@PostMapping("/varios")
	@ResponseStatus(HttpStatus.CREATED)
	public List<Veiculo> inserirVarios(@RequestBody List<Veiculo> veiculos) {
	    return repository.saveAll(veiculos);
	}
	
	@PutMapping("{id}")
    public ResponseEntity<Veiculo> alterarVeiculo(@PathVariable Long id, @Valid @RequestBody Veiculo v) {
        if (repository.existsById(id)) {
            v.setId(id);
            return ResponseEntity.ok(repository.save(v));
        }
        return ResponseEntity.notFound().build();
    }
	
	@DeleteMapping("{id}")
	public ResponseEntity<Void> apagar(@PathVariable Long id) {
		if (repository.existsById(id)) {
			repository.deleteById(id);
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.notFound().build();
	}
}
