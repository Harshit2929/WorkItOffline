const { Sequelize, DataTypes, Model } = require('sequelize')
let {connection} = require("./../imports")
const activity = connection.define("activity", {
    aid:{
        type: DataTypes.INTEGER,
        autoincrement: true,
        primarykey: true,
        unique:true
    },
    title:{
        type:DataTypes.STRING,
        allowNull: false
    },
    quantity: {
        type:DataTypes.INTEGER,
        allowNull: false
    },
    amount:{
        type:DataTypes.INTEGER,
        allowNull: false
    },
    is_completed:{
        type:DataTypes.BOOLEAN, 
        allowNull: false
    },
    is_paid:{
        type:DataTypes.BOOLEAN, 
        allowNull: false
    }
});

module.exports = activity