package br.com.serratec.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.serratec.entitiy.Endereco;

public interface EnderecoRepository extends JpaRepository<Endereco, Long>{
	Endereco findByCep(String cep);
}
