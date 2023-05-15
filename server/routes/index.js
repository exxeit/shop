const Router = require('express')
const router = new Router()
const deviceRouter = require('./deviceRouter')
const favRouter = require('./favRouter')
const userRouter = require('./userRouter')
const brandRouter = require('./brandRouter')
const typeRouter = require('./typeRouter')
const orderRouter = require('./orderRouter')
const infoRouter = require('./deviceInfoRouter')
const checkRole = require('../middleware/checkRoleMiddleware')

router.use('/user', userRouter)
router.use('/type', typeRouter)
router.use('/brand', brandRouter)
router.use('/device', deviceRouter)
router.use('/fav', favRouter)
router.use('/order', orderRouter)
router.use('/info', infoRouter)


module.exports = router
