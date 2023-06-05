'use strict';
module.exports = {  up: async (queryInterface, Sequelize) => {
        await queryInterface.addColumn('users', 'photo', {      type: Sequelize.STRING,
            allowNull: true    });
        await queryInterface.addColumn('devices', 'img2', {
            type: Sequelize.STRING,      allowNull: true
        });
        await queryInterface.addColumn('devices', 'img3', {      type: Sequelize.STRING,
            allowNull: true    });
        await queryInterface.createTable('favorites', {
            id: {        type: Sequelize.INTEGER,
                primaryKey: true,        autoIncrement: true
            },      userId: {
                type: Sequelize.INTEGER,        allowNull: false,
                references: {          model: 'users',
                    key: 'id'        },
                onUpdate: 'CASCADE',        onDelete: 'CASCADE'
            },      deviceId: {
                type: Sequelize.INTEGER,        allowNull: false,
                references: {          model: 'devices',
                    key: 'id'        },
                onUpdate: 'CASCADE',        onDelete: 'CASCADE'
            },      createdAt: {
                type: Sequelize.DATE,        allowNull: false
            },      updatedAt: {
                type: Sequelize.DATE,        allowNull: false
            }    });
    },
    down: async (queryInterface, Sequelize) => {    await queryInterface.removeColumn('users', 'photo');
        await queryInterface.removeColumn('devices', 'img2');    await queryInterface.removeColumn('devices', 'img3');
        await queryInterface.dropTable('favorites');  }
};