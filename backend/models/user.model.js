const { Sequelize, DataTypes, Model } = require('sequelize')
let {connection} = require("./../imports")
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
    },
    amount_due: {
        type: DataTypes.INTEGER,
        allowNull:true
      },
    phone_number: {
        type: DataTypes.STRING,
        allowNull:false
      }
      ,is_admin:{
        type:DataTypes.BOOLEAN,
        allowNull:false
      }
      ,is_ao:{
        type:DataTypes.BOOLEAN,
        allowNull:false
      }
});


// ( async function(){
// await User.sync({ alter: true })
// })()
// added some dummy data only once
// (async function (){

// const user2=await User.create({ uid: 1, shg_id:2,firstName: "ddbjsbchjds", lastName: "sdchddcs", fatherName: "cjdskcn", husbandName: "sdfcsdb",is_admin:true,is_ao:false, phone_number: 999569569})
// const user3=await User.create({ uid: 13, shg_id:3,firstName: "asjdcnds", lastName: "sdbndscdd", fatherName: "chdksjc", husbandName: "sanjnc",is_admin:false, is_ao:true,phone_number: 945999119})

// //  console.log(user2.firstName)
// //  console.log(user3.firstName)
//  })()

module.exports = User
