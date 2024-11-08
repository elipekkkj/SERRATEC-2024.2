import { Api } from "./api";

export const GetUsers = () => {

    const endpointUser = import.meta.env.VITE_URL_USERS

    try {
        const respostaApi = Api.get(`${endpointUser}`);
        return respostaApi;
    
    } catch (error) {
        return error;
    }
}