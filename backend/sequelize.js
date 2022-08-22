const { Sequelize, Model, DataTypes } = require('sequelize');
const {connection} = require("./imports")



const UserModel = require("./models/user.model");
const MeetingModel = require("./models/meeting.model");
const MeetingUserModel = require("./models/meetinguser.model");


const User = new UserModel(connection, DataTypes);
const Meeting = new MeetingModel(connection, DataTypes);



UserModel.belongsToMany(MeetingModel, {through: 'meetingusers', foreignKey: 'mmid'})
MeetingModel.belongsToMany(UserModel, {through: 'meetingusers', foreignKey: 'uuid'})




let s = async () =>{
    try {
        await connection.authenticate();
        console.log('Connection has been established successfully.');

         

        await connection.sync({force: true}).then(()=>{
            console.log("TABLE ADDED")
        })
      } catch (error) {
        console.error('Unable to connect to the database:', error);
      }
}
s()




module.exports = {
    User,
    Meeting
}