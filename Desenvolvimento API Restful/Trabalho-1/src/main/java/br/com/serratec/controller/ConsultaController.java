package br.com.serratec.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import br.com.serratec.entity.Consulta;
import br.com.serratec.repository.ConsultaRepository;
import jakarta.validation.Valid;

public class ConsultaController {

	@Autowired
	private ConsultaRepository repository;
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Consulta inserir(@Valid @RequestBody Consulta c) {
		return repository.save(c);
	}
}
