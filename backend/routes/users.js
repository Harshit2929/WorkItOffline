var express = require('express');
var router = express.Router();
const user = require("../controllers/user.js");
const {User,Meeting,Shg,Transaction}=require('../sequelize')

//create a user
router.post('/users', user.create);
//get all users
router.get('/users', user.getAll);
//get a user
router.get('/users/:uid', user.getOne);
//update a user
router.put('/users/:uid', user.update);
//delete a user
router.delete('/users/:uid', user.delete);
//get all meetings of a user
router.get('/users/:uid/meetings', user.getMeetings);
//get all transactions of a user
router.get('/users/:uid/transactions', user.getTransactions);


module.exports = router;
