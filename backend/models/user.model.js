const { Sequelize, DataTypes, Model } = require('sequelize')
let {connection} = require("./../imports")
//const Shg = new require("./shg.model")(connection, DataTypes)
const User = connection.define("users", {
    uid:{
        type: DataTypes.INTEGER,
        autoincrement: true,
        primarykey: true,
        unique:true
    },
    shg_id:{
        type: DataTypes.INTEGER,
    },
    firstName:{
        type:DataTypes.STRING,
        allowNull: false
    },
    lastName:{
        type: DataTypes.STRING
    },
    fatherName:{
        type: DataTypes.STRING
    },
    husbandName: {
        type: DataTypes.STRING
    }
});


//User.belongsTo(Shg)
module.exports = User