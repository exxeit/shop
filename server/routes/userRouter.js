const Router = require('express')
const router = new Router()
const userController = require('../controllers/userController')
const authMiddleware = require('../middleware/authMiddleware')

router.post('/registration', userController.registration)
router.post('/login', userController.login)
router.get('/auth', authMiddleware, userController.check)
router.get('/me', authMiddleware, userController.getMe)
router.patch('/change', authMiddleware, userController.setPhoto)
router.post('/send_reset', userController.sendReset)
router.post('/change_pass', userController.changePassword)

module.exports = router
