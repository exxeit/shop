const ApiError = require('../error/ApiError');
const bcrypt = require('bcrypt')
const {Device, Order} = require("../models/models");

class OrderController {
    async create(req, res) {
        const { id, email } = req.body
        const device = await Device.findOne({where: {id}});
        if (device) {
            const product_id = device.id
            const price = device.price
            const order = await Order.create({product_id, price, email})
            return res.json({ "data":  order});
        }
        return res.json({"data": 'error'})
    }
}

module.exports = new OrderController()
