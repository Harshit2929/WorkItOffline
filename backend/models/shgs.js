module.exports = (sequelize, datatype) =>
{ return sequelize.define('SHG', {
  // Model attributes are defined here
  name: {
    type: datatype.STRING,
    allowNull: false
  },
  shg_id: {
    type: datatype.INTEGER,
    autoIncrement: true,
    primaryKey: true,
    allowNull:false
  },
  total_amount: {
    type: datatype.INTEGER,
    allowNull:false
  }
}, {
  // Other model options go here
})
};
