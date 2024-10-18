package br.com.serratec.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.serratec.entitiy.UsuarioPerfil;
import br.com.serratec.entitiy.pk.UsuarioPerfilPK;

public interface UsuarioPerfilRepository extends JpaRepository<UsuarioPerfil, UsuarioPerfilPK>{

	
}
