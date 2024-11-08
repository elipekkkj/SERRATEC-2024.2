import { useState } from "react"

//3 - Criar um componente que mantém um contador 
//do número de vezes que um botão foi clicado, 
//mostre o número de cliques na tela, 
//use a forma literal do useState para fazer essa contagem.

export const ExercicioUseState = () => {

    const [estadoInicial, setEstadoInicial] = useState(0)

    function contar() {
        setEstadoInicial(estadoInicial + 1)
        //setEstadoInicial(prevState => prevState + 1)
    }

    return (
        <div>
            Cliquei {estadoInicial} vezes no botão
            <button onClick={contar}>Incrementar</button>
        </div>
    )

}