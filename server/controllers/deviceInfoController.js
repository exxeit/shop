const { DeviceInfo } = require('../models/models');

class DeviceInfoController {
    async create(req, res, next) {
        const { id, title, description } = req.body;
        try {
            const deviceInfo = await DeviceInfo.create({
                title: title,
                description: description,
                deviceId: id
            })
            return res.status(201).json(deviceInfo);
        } catch (error) {
            return next(error);
        }
    }

    async delete(req, res, next) {
        const {id} = req.params
        try {
            const deletedDevice = await DeviceInfo.destroy({ where: { id: id } });

            if (!deletedDevice) {
                return res.status(404).json({ message: 'Device not found' });
            }

            return res.status(200).json({ message: 'Device deleted successfully' });
        } catch (error) {
            return next(error);
        }
    }

    async change(req, res, next) {
        const {id, title, description} = req.body;
        try {
            const updatedDevice = await DeviceInfo.findOne({where: {id: id}});

            if (!updatedDevice) {
                return res.status(404).json({message: 'Device not found'});
            }

            updatedDevice.title = title;
            updatedDevice.description = description;
            await updatedDevice.save();

            return res.status(200).json({message: 'Device updated successfully', device: updatedDevice});
        } catch (error) {
            return next(error);
        }
    }
}

module.exports = new DeviceInfoController();
