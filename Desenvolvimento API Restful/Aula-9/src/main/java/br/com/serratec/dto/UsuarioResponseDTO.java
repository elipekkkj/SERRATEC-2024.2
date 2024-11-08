package br.com.serratec.dto;

import br.com.serratec.entitiy.Usuario;

public class UsuarioResponseDTO {
	private String nome;
	private String email;
	private String Url;
	
	public UsuarioResponseDTO() {
	}
	
	public UsuarioResponseDTO(Usuario usuario) {
		this.nome = usuario.getNome();
		this.email = usuario.getEmail();
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return Url;
	}

	public void setUrl(String url) {
		Url = url;
	}
	
	
}
