const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const Meeting = connection.define("meetings", {
    meeting_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        unique: true
      },
      meeting_date: {
        type: DataTypes.DATE,
      }
});

// ( async function(){
// await Meeting.sync({ alter: true })
// })()

// added some dummy data only once
// (async function (){
//   const meeting2=await Meeting.create({ meeting_id: 5, meeting_date: "2008-11-11 13:23:4"})
// const meeting1=await Meeting.create({ meeting_id: 4, meeting_date: "2008-11-12 15:23:44"})
// const meeting3=await Meeting.create({ meeting_id: 6, meeting_date:"2009-07-12 15:23:44"})
// // console.log(user1.firstName)
// })()



module.exports = Meeting