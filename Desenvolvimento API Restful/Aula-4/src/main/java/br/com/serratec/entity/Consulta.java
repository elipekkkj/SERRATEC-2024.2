package br.com.serratec.entity;

import org.springframework.stereotype.Component;

@Component
public class Consulta {
	
	public double calcularConsulta(Double valor) {
		return valor *= 1.10; 
	}
}
