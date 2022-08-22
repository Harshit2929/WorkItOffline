const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const User = connection.define("users", {
    id:{
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    firstName:{
        type:DataTypes.STRING,
        allowNull: false
    },
    lastName:{
        type: DataTypes.STRING
    }
});


module.exports = User