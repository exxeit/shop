const ApiError = require('../error/ApiError');
const bcrypt = require('bcrypt')
const uuid = require('uuid')
const path = require('path')
const jwt = require('jsonwebtoken')
const {User, Basket} = require('../models/models')

const generateJwt = (id, email, role) => {
    return jwt.sign(
        {id, email, role},
        process.env.SECRET_KEY,
        {expiresIn: '24h'}
    )
}

class UserController {
    async registration(req, res, next) {
        const {email, password, role} = req.body
        if (!email || !password) {
            return next(ApiError.badRequest('Некорректный email или пароль'))
        }
        const candidate = await User.findOne({where: {email}})
        if (candidate) {
            return next(ApiError.badRequest('Пользователь с таким email уже существует'))
        }
        const hashPassword = await bcrypt.hash(password, 5)
        const user = await User.create({email, role, password: hashPassword})
        const basket = await Basket.create({userId: user.id})
        const token = generateJwt(user.id, user.email, user.role)
        return res.json({token})
    }

    async login(req, res, next) {
        const {email, password} = req.body
        const user = await User.findOne({where: {email}})
        if (!user) {
            return next(ApiError.internal('Пользователь не найден'))
        }
        let comparePassword = bcrypt.compareSync(password, user.password)
        if (!comparePassword) {
            return next(ApiError.internal('Указан неверный пароль'))
        }
        const token = generateJwt(user.id, user.email, user.role)
        return res.json({token, user})
    }

    async check(req, res, next) {
        const token = generateJwt(req.user.id, req.user.email, req.user.role)
        return res.json({token})
    }

    async setPhoto(req, res, next) {
        const {photo} = req.files
        if (!photo) {
            return next(ApiError.badRequest('Файл не найден'))
        }

        if (!photo.mimetype.startsWith('image/')) {
            return next(ApiError.badRequest('Можно загружать только изображения'))
        }

        let fileName = uuid.v4() + ".jpg"
        photo.mv(path.resolve(__dirname, '..', 'static', fileName))

        try {
            const updatedUser = await User.update(
                { photo: fileName },
                { where: { id: req.user.id } }
            )
            return res.json(updatedUser)
        } catch (e) {
            return next(ApiError.internal('Не удалось загрузить фото'))
        }
    }

    async getMe(req, res, next) {
        const user = req.user
        const data = await User.findOne({where: {id: user.id}})
        res.json({data})
    }
}

module.exports = new UserController()
