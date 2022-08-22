const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")
const UserModel = require("./user.model")
const MeetingModel = require("./meeting.model")

const MeetingUser = connection.define("meetingUser", {
    meeting_id: {
        type: DataTypes.INTEGER,
        references: {
            model: MeetingModel,
            key: 'meeting_id',
            unique:true 
        }
      },
      uid: {
        type: DataTypes.INTEGER,
        references: {
            model: UserModel,
            key: 'uid',
            unique:true
        }
      },
      is_present:{
        type:DataTypes.BOOLEAN,
        allowNull:false
      }
});


module.exports = MeetingUser