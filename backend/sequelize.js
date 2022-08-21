const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize=require('../connection');
const UserModel = require('./models/Users.js')
const MeetingModel = require('./models/Meetings.js')
const ShgModel = require('./models/Shgs.js')
const TransactionModel = require('./models/Transactions.js')

const User=UserModel(sequelize,DataTypes)
const Meeting=MeetingModel(sequelize,DataTypes)
const Shg=ShgModel(sequelize,DataTypes)
const Transaction=TransactionModel(sequelize,DataTypes)

//one to many relationship between  Shg and User
Shg.hasMany(User,{sourceKey:'shg_id',foreignKey:'shg_id'})
User.belongsTo(Shg,{targetKey:'shg_id',foreignKey:'shg_id'})

//many to many relationship between  Meeting and User
Meeting.hasMany(User,{sourceKey:'meeting_id',foreignKey:'meeting_id'})
User.hasMany(Meeting,{sourceKey:'uid',foreignKey:'uid'})

// one to many relationship between  user and transaction
Transaction.belongsTo(User,{targetKey:'uid',foreignKey:'uid'})
User.hasMany(Transaction,{sourceKey:'uid',foreignKey:'uid'})

//one to many relationship between  shg and transaction
Transaction.belongsTo(Shg,{targetKey:'shg_id',foreignKey:'shg_id'})
Shg.hasMany(Transaction,{sourceKey:'shg_id',foreignKey:'shg_id'})


sequelize.sync({ force: true })
  .then(() => {
    console.log(`Database & tables created!`)
  })

  module.exports = {
    User,
    Meeting,
    Shg,
    Transaction
  }