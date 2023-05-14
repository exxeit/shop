import {$authHost, $host} from "./index";
import jwt_decode from "jwt-decode";

export const createType = async (type) => {
    const {data} = await $authHost.post('api/type', type)
    return data
}

export const fetchTypes = async () => {
    const {data} = await $host.get('api/type')
    return data
}

export const createBrand = async (brand) => {
    const {data} = await $authHost.post('api/brand', brand)
    return data
}

export const fetchBrands = async () => {
    const {data} = await $host.get('api/brand', )
    return data
}

export const createDevice = async (device) => {
    const {data} = await $authHost.post('api/device', device)
    return data
}

export const fetchDevices = async (typeId, brandId, page, name, limit = 3) => {
    const {data} = await $host.get('api/device', {params: {
            typeId, brandId, page, limit, name
        }})
    return data
}

export const fetchOneDevice = async (id) => {
    const {data} = await $host.get('api/device/' + id)
    return data
}

export const deleteDevice = async (id) => {
    const {data} = await $host.post('api/device/delete/' + id)
    return data;
}

export const addToFav = async (item, user) => {
    await $host.post('api/fav/add_to_fav/', {itemId: item, userId: user})
}

export const delToFav = async (item, user) => {
    await $host.post('api/fav/del_to_fav/', {itemId: item, userId: user})
}

export const myFav = async (id) => {
    const {data} = await $host.post('api/fav/get_all/', {userId: id})
    return data
}

export const isFav = async (item, user) => {
    const {data} = await $host.post('api/fav/is_fav/', {itemId: item, userId: user})
    return data.isFavorite
}