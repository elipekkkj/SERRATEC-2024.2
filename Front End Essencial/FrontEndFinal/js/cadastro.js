function cadastrarUsuario() {
    const usuario = document.getElementById('usuario').value;
    const senha = document.getElementById('senha').value;

    if (usuario && senha) {
        localStorage.setItem('usuario', usuario);
        localStorage.setItem('senha', senha);
        alert('Login salvo com sucesso!');
    } else {
        alert('Por favor, preencha todos os campos!');
    }
}

function preencherUsuarioSalvo() {
    const usuarioSalvo = localStorage.getItem('usuario');
    const senhaSalva = localStorage.getItem('senha');

    if (usuarioSalvo && senhaSalva) {
        document.getElementById('usuario').value = usuarioSalvo;
        document.getElementById('senha').value = senhaSalva;
    }
}

window.onload = preencherUsuarioSalvo;