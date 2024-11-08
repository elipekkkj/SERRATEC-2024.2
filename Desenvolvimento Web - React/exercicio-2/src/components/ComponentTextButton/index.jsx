import { useState } from "react";

//4 - Criar um componente que contém um 
//campo de entrada de texto e um botão, 
//o texto digitado deve ser exibido abaixo do campo 
//e ao clicar no botão, exiba o texto na tela.

export const ExercicioTextButton = () => {

    const [inputText, setInputText] = useState('')
    const [display, setDisplay] = useState('')

    function pegarValorInput(event) {
        setInputText(event.target.value)
    }

    function enviar() {
        setDisplay(inputText)
    }

    return (
        <div>
            <input onChange={pegarValorInput} type="text" placeholder="Digite seu e-mail" />
            <button onClick={enviar}>Enviar</button>
            Texto Exibido: {display}
        </div>
    )

}