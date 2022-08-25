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
//   const meeting1=await Meeting.create({ meeting_id: 1, meeting_date: "2008-11-6 13:23:4"})
// const meeting2=await Meeting.create({ meeting_id: 2, meeting_date: "2008-11-19 15:23:44"})
// const meeting3=await Meeting.create({ meeting_id: 3, meeting_date:"2009-07-18 17:23:44"})
// const meeting4=await Meeting.create({ meeting_id: 4, meeting_date: "2008-11-17 17:23:4"})
// // const meeting5=await Meeting.create({ meeting_id: 4, meeting_date: "2008-11-12 15:23:44"})
// // const meeting6=await Meeting.create({ meeting_id: 6, meeting_date:"2009-07-12 15:23:44"})
// // console.log(user1.firstName)
// })()



module.exports = Meeting