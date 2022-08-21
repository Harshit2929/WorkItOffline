module.exports = (sequelize, type) =>
{
    return sequelize.define('Transaction', {
        transaction_id: {
        type: sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
        },
        amount: {
            type: sequelize.INTEGER,
        allowNull: false
        },
        timestamp: {
            type: sequelize.DATE,
        allowNull: false
        },

    }, {
    // Other model options go here
    })
    
}