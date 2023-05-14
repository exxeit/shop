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

export const updatePrice = async (id, newPrice) => {
    const { data } = await $host.put(`api/device/price/${id}`, { price: newPrice });
    return data;
};

export const updateName = async (id, newName) => {
    const { data } = await $host.put(`api/device/name/${id}`, { name: newName });
    return data;
};

export const updatePhoto = async (id, photo) => {
    const formData = new FormData();
    formData.append('photo', photo);
    const {data} = await $host.patch(`api/device/photo/${id}`, formData, {
        headers: { 'Content-Type': 'multipart/form-data' },
    });
    return data;
}