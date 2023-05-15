import {$authHost, $host} from "./index";
import jwt_decode from "jwt-decode";

export const registration = async (email, password) => {
    const {data} = await $host.post('api/user/registration', {email, password, role: 'USER'})
    localStorage.setItem('token', data.token)
    return jwt_decode(data.token)
}

export const login = async (email, password) => {
    const {data} = await $host.post('api/user/login', {email, password})
    localStorage.setItem('token', data.token)
    return { 'token': jwt_decode(data.token), 'user': data.user}
}

export const check = async () => {
    const {data} = await $authHost.get('api/user/auth' )
    localStorage.setItem('token', data.token)
    return jwt_decode(data.token)
}

export const getMe = async () => {
    const {data} = await $authHost.get('api/user/me' )
    return data.data
}

export const changePhoto = async (photo) => {
    const formData = new FormData();
    formData.append('photo', photo);
    const {data} = await $authHost.patch('api/user/change', formData, {
        headers: { 'Content-Type': 'multipart/form-data' },
    });

    return {'user': data.user}
}