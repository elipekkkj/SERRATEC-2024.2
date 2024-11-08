import axios from "axios";
const keyApi = import.meta.env.VITE_KEY;

export const Api = axios.create ({
    baseURL: `https://${keyApi}.mockapi.io/api/v1/users`
})