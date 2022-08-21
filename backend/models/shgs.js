module.exports = (sequelize, type) =>
{ return sequelize.define('SHG', {
  // Model attributes are defined here
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  shg_id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  total_amount: {
    type: Sequelize.INTEGER,
  }
}, {
  // Other model options go here
})
};
