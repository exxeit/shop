import {$authHost, $host} from "./index";

export const makeOrder = async (email, id) => {
    const {data} = await $host.post('api/order/create', {email, id})
    return data
}
