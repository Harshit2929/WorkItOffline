const { Sequelize, DataTypes, Model } = require('sequelize');
let {connection} = require("./../imports")

const Transaction = connection.define("transaction", {
    transaction_id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            allowNull: false
        },
        amount: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        timestamp: {
            type: DataTypes.DATE,
            allowNull: false,
            defaultValue: connection.Sequelize.literal('CURRENT_DATE')
        },
        uid:{
            allowNull: false,
            type: DataTypes.INTEGER
        },
        shg_id:{
            allowNull: false,
            type: DataTypes.INTEGER
        },
        is_type:{
            type: DataTypes.INTEGER,
            allowNull: false
        }
});

// (async function (){
// const t1 = await Transaction.create({transaction_id: 1, amount: 3000, timestamp: '2008-11-11 13:23:4', uid: 4, shg_id: 1})

// console.log(t1.transaction_id)

// })()

module.exports = Transaction