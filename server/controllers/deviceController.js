const uuid = require('uuid')
const path = require('path');
const {Device, DeviceInfo, Favorite, User} = require('../models/models')
const ApiError = require('../error/ApiError');

class DeviceController {
    async create(req, res, next) {
        try {
            let {name, price, brandId, typeId, info} = req.body
            const {img, img2, img3} = req.files

            let fileName2 = null, fileName3 = null

            let fileName = uuid.v4() + ".jpg"
            img.mv(path.resolve(__dirname, '..', 'static', fileName))

            if(img2) {
                fileName2 = uuid.v4() + ".jpg"
                img2.mv(path.resolve(__dirname, '..', 'static', fileName2))
            }

            if(img3) {
                fileName3 = uuid.v4() + ".jpg"
                img3.mv(path.resolve(__dirname, '..', 'static', fileName3))
            }

            const device = await Device.create({name, price, brandId, typeId, img: fileName, img2: fileName2, img3: fileName3});

            if (info) {
                info = JSON.parse(info)
                info.forEach(i =>
                    DeviceInfo.create({
                        title: i.title,
                        description: i.description,
                        deviceId: device.id
                    })
                )
            }

            return res.json(device)
        } catch (e) {
            next(ApiError.badRequest(e.message))
        }

    }

    async getAll(req, res) {
        let {brandId, typeId, limit, page, name} = req.query
        page = page || 1
        limit = limit || 9
        let offset = page * limit - limit
        let devices;
        if (!brandId && !typeId) {
            devices = await Device.findAndCountAll({limit, offset})
        }
        if (brandId && !typeId) {
            devices = await Device.findAndCountAll({where: {brandId}, limit, offset})
        }
        if (!brandId && typeId) {
            devices = await Device.findAndCountAll({where: {typeId}, limit, offset})
        }
        if (brandId && typeId) {
            devices = await Device.findAndCountAll({where: {typeId, brandId}, limit, offset})
        }
        if (brandId && typeId && name) {
            devices = await Device.findAndCountAll({where: {typeId, brandId, name}, limit, offset})
        }
        if (!brandId && typeId && name) {
            devices = await Device.findAndCountAll({where: {typeId, name}, limit, offset})
        }
        if (brandId && !typeId && name) {
            devices = await Device.findAndCountAll({where: { brandId, name}, limit, offset})
        }

        if (!brandId && !typeId && name) {
            limit = 1
            let offset = page * limit - limit
            devices = await Device.findAndCountAll({where: {name}, limit, offset})
        }
        return res.json(devices)
    }

    async getOne(req, res) {
        const {id} = req.params
        const device = await Device.findOne(
            {
                where: {id},
                include: [{model: DeviceInfo, as: 'info'}]
            },
        )
        return res.json(device)
    }

    async deleteOne(req, res) {
        try {
            const {id} = req.params
            const device = await Device.findOne({
                where: {id: id}
            })
            device.destroy();
            return res.json({"Status": 'OK'})
        } catch (e) {
            return res.json({'asd': e})
        }

    }

    async updatePrice(req, res, next) {
        try {
            const {id} = req.params
            const {price} = req.body
            const device = await Device.findOne({where: {id}})
            if (!device) {
                throw ApiError.notFound(`Device with id ${id} not found`)
            }
            await device.update({price})
            return res.json(device)
        } catch (e) {
            next(ApiError.badRequest(e.message))
        }
    }

    async updateName(req, res, next) {
        try {
            const {id} = req.params
            const {name} = req.body
            const device = await Device.findOne({where: {id}})
            if (!device) {
                throw ApiError.notFound(`Device with id ${id} not found`)
            }
            await device.update({name})
            return res.json(device)
        } catch (e) {
            next(ApiError.badRequest(e.message))
        }
    }

    async setPhoto (req, res, next) {
        const {id} = req.params
        const {photo} = req.files
        const { item } = req.query;

        if (!photo) {
            return next(ApiError.badRequest('Файл не найден'))
        }

        if (!photo.mimetype.startsWith('image/')) {
            return next(ApiError.badRequest('Можно загружать только изображения'))
        }

        let fieldName;
        switch (item) {
            case '1':
                fieldName = 'img';
                break;
            case '2':
                fieldName = 'img2';
                break;
            case '3':
                fieldName = 'img3';
                break;
            default:
                return next(ApiError.badRequest('Некорректное значение item'));
        }

        let fileName = uuid.v4() + ".jpg"
        photo.mv(path.resolve(__dirname, '..', 'static', fileName))

        try {
            const updateData = {};
            updateData[fieldName] = fileName;

            const updatedDevice = await Device.update(updateData, {
                where: { id: id },
            });

            return res.json(updatedDevice);
        } catch (e) {
            return next(ApiError.internal('Не удалось загрузить фото'))
        }
    }
}

module.exports = new DeviceController()
