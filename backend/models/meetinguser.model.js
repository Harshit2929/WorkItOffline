
const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")
const UserModel = require("./user.model");
const MeetingModel = require("./meeting.model");

const MeetingUser = connection.define("meetings", {
    mid:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        references: {
            model: MeetingModel,
            key: 'mid',
            unique: true
        }
        
    },
    uid:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        references: {
            model: UserModel,
            key: 'uid',
            unique: true
        },
    },
    isPresent:{
        type: DataTypes.BOOLEAN,
        allowNull: false
    }
});


module.exports = MeetingUser