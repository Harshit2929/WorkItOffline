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
});


// added some dummy data
(async function (){
const user1=await User.create({ uid: 4, firstName: "Jo", lastName: "dbjksb", fatherName: "sncxscdnnc ", husbandName: "szdncddc" ,is_admin:true, phone_number: 999994999})
const user2=await User.create({ uid: 5, firstName: "Jfnd", lastName: "bdkesd", fatherName: "Jane Doe", husbandName: "bdbmcd",is_admin:false, phone_number: 999999569})
const user3=await User.create({ uid: 6, firstName: "bsdbmc", lastName: "sbcdsms", fatherName: "nkscmsdn", husbandName: "cbdsc",is_admin:false, phone_number: 999999999})
console.log(user1.firstName)
console.log(user2.lastName)
})()

module.exports = User