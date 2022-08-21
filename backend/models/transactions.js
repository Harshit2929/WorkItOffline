module.exports = (sequelize, datatype) =>
{
    return sequelize.define('Transaction', {
        transaction_id: {
        type: datatype.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
        },
        amount: {
            type: datatype.INTEGER,
        allowNull: false
        },
        timestamp: {
            type: datatype.DATE,
        allowNull: false
        },
        uid:{
            allowNull: false,
            type: datatype.INTEGER
        },shgid:{
            allowNull: false,
            type: datatype.INTEGER
        }

    }, {
    // Other model options go here
    })
    
}