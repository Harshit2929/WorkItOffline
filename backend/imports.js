const express = require("express")
const app = express()
require('dotenv').config()

const { Sequelize } = require('sequelize');

const DBPROTOCOL = process.env.DBPROTOCOL;
const DBHOST = process.env.DBHOST;
const DBUSER = process.env.DBUSER;
const DBPASSWORD = process.env.DBPASSWORD;
const DBPORT = process.env.DBPORT;
const DBNAME = process.env.DBNAME;

const connection = new Sequelize(`${DBPROTOCOL}://${DBUSER}:${DBPASSWORD}@${DBHOST}:${DBPORT}/${DBNAME}`, {
    dialect:'postgres',
    port: DBPORT,
    host: DBHOST,
    logging: false
})
module.exports = {
    app, 
    Sequelize,
    connection
}