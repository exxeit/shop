const Router = require('express')
const router = new Router()
const orderController = require('../controllers/orderController')

router.post('/create',  orderController.create)

module.exports = router
