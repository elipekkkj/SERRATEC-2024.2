import { useEffect } from 'react';
import { Container } from './style';
import { GetUsers } from '../../services/GetUsers';

export const RequestApi = () => {

    // const carregar = async () => {};

    async function carregarDadosApi() {

        const response = await GetUsers();

        if (response.status === 200) {
            console.log('Retorno api', response.data);
        } else {
            console.log('Erro ao carregar dados');
        }
    }

    useEffect(() => {
        carregarDadosApi();
    }, [])

    return (
        <Container>
            RequestApi
        </Container>
    )
}