
const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const Meetings = connection.define("meetings", {
    mmid:{
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        unique: true
    },
    meetingName: {
        type: DataTypes.STRING
    }
});


module.exports = Meetings