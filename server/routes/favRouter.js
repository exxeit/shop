const Router = require('express')
const router = new Router()
const favController = require('../controllers/favController')

router.post('/add_to_fav', favController.addToFavorites)
router.post('/del_to_fav', favController.removeFromFavorites)
router.post('/get_all', favController.getFavoritesByUserId)
router.post('/is_fav', favController.isFavorite)


module.exports = router
