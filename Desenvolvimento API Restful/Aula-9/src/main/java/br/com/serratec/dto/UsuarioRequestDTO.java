package br.com.serratec.dto;

import java.util.HashSet;
import java.util.Set;

import br.com.serratec.entitiy.Usuario;
import br.com.serratec.entitiy.UsuarioPerfil;

public class UsuarioRequestDTO {
	private String nome;
	private String email;
	private String senha;
	private Set<UsuarioPerfil> usuarioPerfis = new HashSet<>();
	
	public UsuarioRequestDTO() {
		
	}
	
	public UsuarioRequestDTO(Usuario usuario) {
		super();
		this.nome = usuario.getNome();
		this.email = usuario.getEmail();
		this.senha = usuario.getSenha();
	}
	
	public Set<UsuarioPerfil> getUsuarioPerfis() {
		return usuarioPerfis;
	}
	
	public String getSenha() {
		return senha;
	}


	public void setSenha(String senha) {
		this.senha = senha;
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

	
}
