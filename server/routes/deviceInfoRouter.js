const Router = require('express')
const router = new Router()

const deviceInfoController  = require('../controllers/deviceInfoController')

router.post('/', deviceInfoController.create)
router.delete('/:id', deviceInfoController.delete)

module.exports = router