module.exports = (sequelize, datatype) =>
{ return sequelize.define('MeetingUsers', {
  // Model attributes are defined here
  meeting_id: {
    type: datatype.INTEGER,
    autoIncrement: true,
    primaryKey: true,
    allowNull:false
  },
  uid: {
    type: datatype.INTEGER,
    autoIncrement: true,
    primaryKey: true,
    allowNull:false
  },
  is_present:{
    type:datatype.BOOLEAN,
    allowNull:false
  }
}, {
  // Other model options go here
})
};