module.exports = (sequelize, type) =>
{ return sequelize.define('Meeting', {
  // Model attributes are defined here
  meeting_id: {
    type: sequelize.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  meeting_date: {
    type: sequelize.DATEONLY,
  },
  meeting_time: {
    type: sequelize.TIME,
  }, 
  is_present: {
    type: sequelize.BOOLEAN,
    defaultValue: false
  }
}, {
  // Other model options go here
})
};
