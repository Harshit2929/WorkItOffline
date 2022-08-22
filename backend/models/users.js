module.exports =(sequelize,datatype) =>{ 
  return sequelize.define('User', {
  // Model attributes
  uid: {
    type: datatype.INTEGER,
    allowNull:false,
    primaryKey: true,
    autoIncrement: true
  },
  first_name: {
    type: datatype.STRING,
    allowNull: false
  },
  middle_name:{
    type:datatype.STRING,
    allowNull:true,
  }
  ,last_name: {
    type: datatype.STRING,
    allowNull:false
  },
  amount_due: {
    type: datatype.INTEGER,
    allowNull:true
  }
  ,phone_number: {
    type: datatype.BIGINT,
    allowNull:false
  }
  ,is_admin:{
    type:datatype.BOOLEAN,
    allowNull:false
  },shg_id:{
    type:datatype.INTEGER,
    allowNull:false
  }
}, {
  // Other model options go here
})};