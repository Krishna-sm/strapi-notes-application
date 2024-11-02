import axios from "axios"

export const BACKEND_URI="http://localhost:1337/api/notes"

export const AxiosClient = axios.create({
    baseURL:BACKEND_URI
})