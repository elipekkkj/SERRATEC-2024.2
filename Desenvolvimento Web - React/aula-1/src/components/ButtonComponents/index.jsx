export const ButtonComponents = (props) => {

    return (
        <button onClick={props.funcao}>
            {props.nome}
        </button>
    )
}