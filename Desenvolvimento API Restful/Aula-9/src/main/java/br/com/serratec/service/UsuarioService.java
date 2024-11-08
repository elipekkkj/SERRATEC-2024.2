
package br.com.serratec.service;

import java.io.IOException;
import java.net.URI;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import br.com.serratec.config.MailConfig;
import br.com.serratec.dto.EnderecoResponseDTO;
import br.com.serratec.dto.UsuarioRequestDTO;
import br.com.serratec.dto.UsuarioResponseDTO;
import br.com.serratec.entitiy.Endereco;
import br.com.serratec.entitiy.Usuario;
import br.com.serratec.entitiy.UsuarioPerfil;
import br.com.serratec.exception.EmailException;
import br.com.serratec.repository.UsuarioPerfilRepository;
import br.com.serratec.repository.UsuarioRepository;
import jakarta.transaction.Transactional;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository repository;

	@Autowired
	private BCryptPasswordEncoder encoder;

	@Autowired
	private MailConfig mailConfig;

	@Autowired
	private PerfilService perfilService;

	@Autowired
	private UsuarioPerfilRepository usuarioPerfilRepository;

	@Autowired
	private EnderecoService enderecoService;
	
	@Autowired
	private FotoService fotoService;

	public List<UsuarioResponseDTO> listar() {
		List<Usuario> usuarios = repository.findAll();
		List<UsuarioResponseDTO> dtos = new ArrayList<>();
		for (Usuario usuario : usuarios) {
			dtos.add(new UsuarioResponseDTO(usuario));
		}
		return dtos;
	}

	@Transactional
	public UsuarioResponseDTO inserir(UsuarioRequestDTO dto, MultipartFile file) throws IOException {
		Optional<Usuario> u = repository.findByEmail(dto.getEmail());
		if (u.isPresent()) {
			throw new EmailException("Email existente!");
		}
		dto.setSenha(encoder.encode(dto.getSenha()));

		Usuario usuario = new Usuario();
		usuario.setNome(dto.getNome());
		usuario.setEmail(dto.getEmail());
		usuario.setSenha(dto.getSenha());

		EnderecoResponseDTO enderecoDTO = enderecoService.buscar(dto.getCep());
		Endereco endereco = new Endereco();
		endereco.setCep(enderecoDTO.getCep());
		endereco.setBairro(enderecoDTO.getBairro());
		endereco.setLocalidade(enderecoDTO.getLocalidade());
		endereco.setLogradouro(enderecoDTO.getLogradouro());
		endereco.setUf(enderecoDTO.getUf());
		
		usuario.setEndereco(endereco);

		usuario = repository.save(usuario);

		for (UsuarioPerfil up : dto.getUsuarioPerfis()) {
			up.setUsuario(usuario);
			System.out.println(perfilService.buscar(up.getPerfil().getId()));
			up.setPerfil(perfilService.buscar(up.getPerfil().getId()));
			up.setDataCriacao(LocalDate.now());
		}

		usuarioPerfilRepository.saveAll(dto.getUsuarioPerfis());
		
		fotoService.inserir(usuario, file);

		// mailConfig.sendEmail(usuario.getEmail(), "Confirmação de cadastro",
		// usuario.toString());
		return adicionarUrlFoto(usuario);
	}
	
	private UsuarioResponseDTO adicionarUrlFoto(Usuario usuario) {
		URI uri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/usuarios/{id}/foto")
				.buildAndExpand(usuario.getId()).toUri();
		
		UsuarioResponseDTO dto = new UsuarioResponseDTO();
		dto.setNome(usuario.getNome());
		dto.setEmail(usuario.getEmail());
		dto.setUrl(uri.toString());
		
		return dto;
		
	}
	
	public UsuarioResponseDTO buscar(Long id) {
		Optional<Usuario> usuario = repository.findById(id);
		if(usuario.isPresent()) {
			return adicionarUrlFoto(usuario.get());
		}
		return null;
	}
	
}