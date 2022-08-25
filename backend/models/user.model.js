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
        type: DataTypes.BIGINT,
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
// const user1=await User.create({ uid: 7, firstName: "esdcmbdssn", lastName: "ddsfndscnffdv", fatherName: "sncxscsdnc ", husbandName: "sdfdscddc" ,is_admin:false, phone_number: 9567994999})
// const user2=await User.create({ uid: 8, firstName: "ddbjs", lastName: "kcsndasdfsccndk", fatherName: "Jadsfdsce", husbandName: "bdsdd",is_admin:false, phone_number: 999569569})
// const user3=await User.create({ uid: 9, firstName: "kcbhjd", lastName: "dsscf", fatherName: "nkscdsdcfdsn", husbandName: "cbsdfsc",is_admin:false, phone_number: 945999119})

//  console.log(user1.firstName)
//  console.log(user2.lastName)
//  })()

module.exports = User
