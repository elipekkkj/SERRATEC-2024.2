import { useState } from "react";

//2 - Criar um componente que exibe um botão, 
//ao clicar no botão, a cor de fundo do botão deve mudar
//entre duas cores diferentes (ex: vermelho e azul), 
//use o callback do useState para essa troca.

export const ExercicioCallback = () => {

    const [color, setColor] = useState("red")
    function alterar() {
        setColor(prevState => prevState === "red" ? "black" : "red")
    }

    return (
        <div style={{ backgroundColor: color }}>
            <button onClick={alterar}>Alterar</button>
        </div>
    )
}