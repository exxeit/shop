const {Device, Favorite} = require('../models/models')
const ApiError = require('../error/ApiError');

class FavController {
    async addToFavorites(req, res) {
        try {
            let {itemId, userId} = req.body
            const device = await Device.findByPk(itemId);
            if (!device) {
                return res.status(404).json({ message: "Device not found" });
            }
            const fav = await Favorite.create({deviceId: itemId, userId: userId})
            return res.json({ message: "Device added to favorites" });

        } catch (e) {
            console.log(e);
            return res.status(500).json({ message: "Something went wrong, try again later" });
        }
    }

    async removeFromFavorites(req, res) {
        try {
            let {itemId, userId} = req.body
            const fav = await Favorite.findOne({ where: { deviceId: itemId, userId: userId } });
            if (!fav) {
                return res.status(404).json({ message: "Favorite not found" });
            }
            await fav.destroy();
            return res.json({ message: "Favorite deleted" });
        } catch (e) {
            console.log(e);
            return res.status(500).json({ message: "Something went wrong, try again later" });
        }
    }

    async getFavoritesByUserId(req, res) {
        try {
            const { userId } = req.body;
            const favs = await Favorite.findAll({ where: { userId: userId } });
            return res.json(favs);
        } catch (e) {
            console.log(e);
            return res.status(500).json({ message: "Something went wrong, try again later" });
        }
    }

    async isFavorite(req, res) {
        try {
            let {itemId, userId} = req.body
            const fav = await Favorite.findOne({ where: { deviceId: itemId, userId: userId } });
            if (fav) {
                return res.json({ isFavorite: true });
            }
            return res.json({ isFavorite: false });
        } catch (e) {
            console.log(e);
            return res.status(500).json({ message: "Something went wrong, try again later" });
        }
    }

}

module.exports = new FavController()
