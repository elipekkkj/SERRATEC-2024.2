import { useNavigate } from "react-router-dom";
import { Button } from "../../components/Button";
import { InputField } from "../../components/InputField";
import { Container, Tittle, ContentForms } from "./style";
import { useState } from "react";

export const Login = () => {

    const navigate = useNavigate();

    const [email, setEmail] = useState('luisf@gmail.com');
    const [password, setPassword] = useState('123456');

    const pegarValorInput = (e) => {
        setEmail(e.target.value)
        console.log('Valor input', e.target.value)
    }

    return (
        <Container>
            <ContentForms>
                <Tittle>Login</Tittle>

                <InputField 
                propsplaceholder="Digite seu email" 
                propstype="email" 
                handleFunction={pegarValorInput}
                />

                {/* <InputField propsplaceholder="Digite sua senha" propstype="password" /> */}

                <Button title="Entrar" handleFunction={handleLogin} />
            </ContentForms>
        </Container>
    );
};