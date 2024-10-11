package br.com.serratec.entity;

import jakarta.persistence.Entity;

@Entity
public class Cirurgiao extends Medico {
	
	private String especialidadeCirurgica;

	public String getEspecialidadeCirurgica() {
		return especialidadeCirurgica;
	}

	public void setEspecialidadeCirurgica(String especialidadeCirurgica) {
		this.especialidadeCirurgica = especialidadeCirurgica;
	}
	
	
}
