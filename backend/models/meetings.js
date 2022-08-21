module.exports = (sequelize, datatype) =>
{ return sequelize.define('Meeting', {
  // Model attributes are defined here
  meeting_id: {
    type: datatype.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  meeting_date: {
    type: datatype.DATEONLY,
  },
  meeting_time: {
    type: datatype.TIME,
  }
}, {
  // Other model options go here
})
};
