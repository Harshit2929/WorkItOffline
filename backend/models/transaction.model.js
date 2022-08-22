const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const Transaction = connection.define("transaction", {
    transaction_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
        },
        amount: {
            type: DataTypes.INTEGER,
        allowNull: false
        },
        timestamp: {
            type: DataTypes.DATE,
        allowNull: false
        },
        uid:{
            allowNull: false,
            type: DataTypes.INTEGER
        },
        shg_id:{
            allowNull: false,
            type: DataTypes.INTEGER
        }
});


module.exports = Transaction