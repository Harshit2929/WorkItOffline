const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")
const UserModel = require("./user.model")
const MeetingModel = require("./meeting.model")

const MeetingUser = connection.define("meetingUser", {
  id:{
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
   meeting_id: {
        type: DataTypes.INTEGER,
        references: {
            model: MeetingModel,
            key: 'meeting_id',
            unique:true
        },
        primary_key:true
      },
      uid: {
        type: DataTypes.INTEGER,
        references: {
            model: UserModel,
            key: 'uid',
            unique:true
        },
        primary_key:true
      },
      is_present:{
        type:DataTypes.BOOLEAN
        // allowNull:false
      }
   
});

// ( async function(){
// await MeetingUser.sync({ alter: true })
// })()


// (async function (){
//   // const mu1=await MeetingUser.create({id:1})
//   // const mu2=await MeetingUser.create({ id:6,is_present: false})
//   // const mu1=await MeetingUser.create({ id:6,is_present: false})
//   // const mu3=await MeetingUser.create({ id:6,is_present: false})
//   // const mu4=await MeetingUser.create({ id:6,is_present: false})
//   // const mu5=await MeetingUser.create({ id:6,is_present: false})

//   const g1=await MeetingUser.create({meeting_id:1,uid:4,is_present:true})
//   const g2=await MeetingUser.create({meeting_id:1,uid:2,is_present:true})
//   // const g3=await MeetingUser.create({meeting_id:5,uid:4,is_present:true})

//   // console.log(mu1.name)
//   // console.log(mu2.name)
//   })()



module.exports = MeetingUser