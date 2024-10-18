package br.com.serratec.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.serratec.entitiy.Usuario;
import java.util.Optional;


public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	Optional<Usuario> findByNome(String nome);
	
	Optional<Usuario> findByEmail(String email);
	
}
