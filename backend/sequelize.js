const { Sequelize, Model, DataTypes } = require('sequelize');
const {connection} = require("./imports")



const UserModel = require("./models/user.model");
const ShgModel = require("./models/shg.model");
const TransactionModel = require("./models/transaction.model");
const MeetingModel = require("./models/meeting.model");
const MeetingUserModel = require("./models/meetingUser.model");


const User = new UserModel(connection, DataTypes);
const Shg = new ShgModel(connection, DataTypes);
const Transaction = new TransactionModel(connection, DataTypes);
const Meeting = new MeetingModel(connection, DataTypes);
const MeetingUsers = new MeetingUserModel(connection, DataTypes);


// Relations between different tables
//one to many relationship between  Shg and User

ShgModel.hasMany(UserModel, {sourceKey:'shg_id',foreignKey:'shg_id'})
UserModel.belongsTo(ShgModel, {targetKey:'shg_id',foreignKey:'shg_id'})

//many to many relationship between  Meeting and User
MeetingModel.belongsToMany(UserModel, {through:MeetingUserModel})
UserModel.belongsToMany(MeetingModel, {through:MeetingUserModel});

// one to many relationship between  user and transaction
TransactionModel.belongsTo(UserModel, {targetKey:'uid',foreignKey:'uid'})
UserModel.hasMany(TransactionModel, {sourceKey:'uid',foreignKey:'uid'})

//one to many relationship between  shg and transaction
TransactionModel.belongsTo(ShgModel, {targetKey:'shg_id',foreignKey:'shg_id'})
ShgModel.hasMany(TransactionModel, {sourceKey:'shg_id',foreignKey:'shg_id'})


let s = async () =>{
    try {
        await connection.authenticate();
        console.log('Connection has been established successfully.');

         

        await connection.sync().then(()=>{
            console.log("TABLE ADDED")
        })
      } catch (error) {
        console.error('Unable to connect to the database:', error);
      }
}
s()

// connection.sync({force: true})


module.exports = {
    User,
    Meeting,
    Shg,
    MeetingUsers,
    Transaction
}