const { Sequelize, Model, DataTypes } = require('sequelize')
require("dotenv").config();

const options = {
  host: 'localhost',
  port: 5432,
  dialect: 'postgres',
  logging: false
  // logging: console.log,
  // force: process.env.DB_FORCE_RESTART
}

const connection = new Sequelize( 'postgres://postgres:googleuser@localhost:5432/postgres', options);

(async () => {
  try {
    await connection.sync();
    console.log('Database connected');
  } catch (error) {
    throw new Error(error);
  }
})();

module.exports = connection;