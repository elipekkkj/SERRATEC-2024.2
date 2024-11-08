import { ButtonStyle } from "./style"

export const Button = ({handleFunction,title}) => {

    return (
        <ButtonStyle onClick={handleFunction}>
            {title}
        </ButtonStyle>
    )


}