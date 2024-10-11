package br.com.serratec.entity;

import org.springframework.stereotype.Component;

@Component
public class Exame {
	
	public double calcularExame(Double valor) {
		return valor *= 1.05; 
	}
}
