const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const Training = connection.define("training", {
    tid: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    image: {
        type: DataTypes.STRING
    }
    ,shg_id:{
        type:DataTypes.INTEGER
        // allowNull:false
    }
});

// ( async function(){
// await Training.sync({ alter: true })
// })()
// added some dummy data only once
// (async function (){
// const user2=await Training.create({ uid: 12, shg_id:2,firstName: "ddbjsbchjds", lastName: "sdchddcs", fatherName: "cjdskcn", husbandName: "sdfcsdb",is_admin:true,is_ao:false, phone_number: 999569569})
// const user3=await Training.create({ tid: 13,shgid:1,image:"avatar-8sFz9.png" })
// const user1=await Training.create({ tid: 14,shgid:3,image:"2022-07-01 11-29-58-66WoB.png" })
// Training.update(
//     { shg_id: 1 },
//     { where: { tid: 13 } }
//   )

//   Training.update(
//     { shg_id: 2 },
//     { where: { tid: 14 } }
//   )

//  })()

module.exports = Training;
