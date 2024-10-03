function cadastrarUsuario() {
    const usuario = document.getElementById('usuario').value;
    const senha = document.getElementById('senha').value;

    if (usuario == "elipekkj" && senha == "elipe998") {
        alert('Login salvo com sucesso!');
    } else {
        alert('Por favor, preencha todos os campos!');
    }
}