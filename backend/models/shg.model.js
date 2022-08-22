const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")
let User = require("./user.model")
const Shg = connection.define("shgs", {
    name: {
        type: DataTypes.STRING,
        allowNull: false
      },
      shg_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
      },
      total_amount: {
        type: DataTypes.INTEGER,
        allowNull: false
      }
});

//Shg.hasMany(User, {as: 'user', foreignKey: 'shg_id'})


module.exports = Shg 