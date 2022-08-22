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
        type: DataTypes.DATEONLY,
      },
      meeting_time: {
        type: DataTypes.TIME,
      }
});


module.exports = Meeting