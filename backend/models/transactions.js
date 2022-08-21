module.exports = (sequelize, type) =>
{
    return sequelize.define('Transaction', {
        transaction_id: {
        type: sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true
        },
        amount: {
            type: sequelize.INTEGER,
        },
        timestamp: {
            type: sequelize.DATE,
        },

    }, {
    // Other model options go here
    })
    
}