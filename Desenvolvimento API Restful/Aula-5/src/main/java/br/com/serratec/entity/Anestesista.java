package br.com.serratec.entity;

import jakarta.persistence.Entity;

@Entity
public class Anestesista extends Medico {
	
	private String tipo;

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
}
