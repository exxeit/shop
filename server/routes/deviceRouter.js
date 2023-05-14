const Router = require('express')
const router = new Router()
const deviceController = require('../controllers/deviceController')
const checkRole = require('../middleware/checkRoleMiddleware')
const authMiddleware = require("../middleware/authMiddleware");
const userController = require("../controllers/userController");

router.post('/', checkRole('ADMIN'), deviceController.create)
router.get('/', deviceController.getAll)
router.get('/:id', deviceController.getOne)
router.post('/delete/:id', deviceController.deleteOne)
router.put('/price/:id', deviceController.updatePrice)
router.put('/name/:id', deviceController.updateName)
router.patch('/photo/:id', deviceController.setPhoto)


module.exports = router
