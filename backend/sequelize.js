const { Sequelize, Model, DataTypes } = require('sequelize');
const {connection} = require("./imports")



const UserModel = require("./models/user.model");


const User = new UserModel(connection, DataTypes);

let s = async () =>{
    try {
        await connection.authenticate();
        console.log('Connection has been established successfully.');


        await connection.sync({force:true}).then(()=>{
            console.log("TABLE ADDED")
        })
      } catch (error) {
        console.error('Unable to connect to the database:', error);
      }
}
s()




module.exports = {
    User
}