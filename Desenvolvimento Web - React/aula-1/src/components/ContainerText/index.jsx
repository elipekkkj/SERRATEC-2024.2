import { ButtonComponents } from "../ButtonComponents"

export const ContainerText = ({children, nome}) => {
    return (
        <div>
            {/* <ButtonComponents nome="Botão do ContainerText"/> */}

            Titulo do modal {nome}

            {children}
        </div>
    )
}
