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
// uncomment this and run it once
// (async function (){
//   const shg1=await Shg.create({ name: "Shakti", shg_id: "1", total_amount: 7777})
//   const shg2=await Shg.create({ name: "Naari", shg_id: "2", total_amount: 10})
//   const shg3=await Shg.create({ name: "zindabad", shg_id: "3", total_amount: 200})
//   console.log(shg1.name)
//   console.log(shg2.name)
//   })()

module.exports = Shg 