package br.com.serratec.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/exemplos")
public class ExemploController {
	
	@GetMapping
	public String mensagem() {
		return "Hello Word!";
	}
	
	@GetMapping("/texto")
	public String texto() {
		return "Serratec - API";
	}
	
	@GetMapping("/converter")
	public String transformar(@RequestParam String texto, @RequestParam Double numero) {
		return texto.toUpperCase() + " " + numero;  
	}
	
}
