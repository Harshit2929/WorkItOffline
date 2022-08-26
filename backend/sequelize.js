const { Sequelize, Model, DataTypes } = require('sequelize');
const {connection} = require("./imports")



const UserModel = require("./models/user.model");
const ShgModel = require("./models/shg.model");
const TransactionModel = require("./models/transaction.model");
const MeetingModel = require("./models/meeting.model");
const MeetingUserModel = require("./models/meetingUser.model");
<<<<<<< HEAD
// const ActivityModel=require("./models/activity.model")
const TrainingModel=require("./models/training.model")
=======
let ActivityModel = require("./models/activity.model");

>>>>>>> 230afd4 (updated')

const User = new UserModel(connection, DataTypes);
const Shg = new ShgModel(connection, DataTypes);
const Transaction = new TransactionModel(connection, DataTypes);
const Meeting = new MeetingModel(connection, DataTypes);
const MeetingUsers = new MeetingUserModel(connection, DataTypes);
<<<<<<< HEAD
// const Activity = new ActivityModel(connection, DataTypes);
const Training=new TrainingModel(connection, DataTypes)

=======
const Activity = new ActivityModel(connection, DataTypes);
>>>>>>> 230afd4 (updated')

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

// ActivityModel.hasMany(ShgModel, {sourceKey:'shg_id',foreignKey:'shg_id'})
// ShgModel.belongsTo(ActivityModel, {targetKey:'shg_id',foreignKey:'shg_id'})

let s = async () =>{
    try {
        await connection.authenticate();
        console.log('Connection has been established successfully.');

<<<<<<< HEAD
=======
         

>>>>>>> 230afd4 (updated')
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
<<<<<<< HEAD
    Transaction,
   Training
=======
    Transaction, 
    Activity
>>>>>>> 230afd4 (updated')
}
