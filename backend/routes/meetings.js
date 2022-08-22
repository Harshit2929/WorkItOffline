var express = require('express');
var router = express.Router();
const user = require("../controllers/user.js");
const {User,Meeting,Shg,Transaction}=require('../sequelize')

//create a user
router.post('/meetings', user.create);
//get all meetings
router.get('/meetings', user.getAll);
//get a user
router.get('/meetings/:uid', user.getOne);
//update a user
router.put('/meetings/:uid', user.update);
//delete a user
router.delete('/meetings/:uid', user.delete);
//get all meetings of a user
router.get('/meetings/:uid/meetings', user.getMeetings);
//get all transactions of a user
router.get('/meetings/:uid/transactions', user.getTransactions);


module.exports = router;