var express = require('express');
var router = express.Router();
const meeting = require("../controllers/user.js");
const {User,Meeting,Shg,Transaction}=require('../sequelize')

//create a meeting
router.post('/meetings', meeting.create);
//get all meetings 
router.get('/meetings', meeting.getAll);
//get a meeting
router.get('/meetings/:uid', meeting.getOne);
//update a meeting
router.put('/meetings/:uid', meeting.update);
//delete a meeting
router.delete('/meetings/:uid', meeting.delete);
// get count of all meetings
router.get('/meetings/:uid/count', meeting.getCount);
// get total meetings till date
router.get('/meetings/totalCount',meeting.totalCount)




module.exports = router;