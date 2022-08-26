const { Sequelize, DataTypes, Model } = require('sequelize')
let {connection} = require("./../imports")
const Activity = connection.define("activity", {
    aid:{
        type: DataTypes.INTEGER,
        autoincrement: true,
        primarykey: true,
        unique:true
    },
    title:{
        type:DataTypes.STRING,
        allowNull: false
    },
    quantity: {
        type:DataTypes.INTEGER,
        allowNull: false
    },
    amount:{
        type:DataTypes.INTEGER,
        allowNull: false
    },
    is_completed:{
        type:DataTypes.BOOLEAN, 
        allowNull: false
    },
    is_paid:{
        type:DataTypes.BOOLEAN, 
        allowNull: false
    },
    shg_id:{
        type:DataTypes.INTEGER,
        allowNull: false
    }
});

// (async function (){
//   const a1=await Activity.create({ aid: 4, shg_id: 2,title:"dhsfn",quantity:34,amount:2343,is_paid:true,amount:34534,is_completed:true});
//   const a2=await Activity.create({ aid: 5, shg_id: 2,title:"dsn",quantity:4334,amount:3243,is_paid:true,amount:4543,is_completed:true});
//   const a3=await Activity.create({ aid: 6, shg_id: 2,title:"chdsjkcjn",quantity:2343,amount:2342,is_paid:false,amount:4555,is_completed:false});
//   })()

// ( async function(){
// await activity.sync({ alter: true })
// })()


module.exports = Activity