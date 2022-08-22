const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const User = connection.define("users", {
    uuid:{
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        unique: true
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