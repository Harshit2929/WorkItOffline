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

// Shg.hasMany(User, {as: 'user', foreignKey: 'shg_id'});
// uncomment this and run it once
// (async function (){
//   const shg1=await Shg.create({ name: "ednsi", shg_id: 1, total_amount:55777})
//   const shg2=await Shg.create({ name: "sdfjbs", shg_id: 2, total_amount: 1000})
//   const shg3=await Shg.create({ name: "sdjhsdbsb", shg_id: 3, total_amount: 20000})
//   console.log(shg1.name)
//   console.log(shg2.name)
//   })()

module.exports = Shg 