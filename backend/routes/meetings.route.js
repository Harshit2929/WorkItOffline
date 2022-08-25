const express = require('express');
const router = express.Router();
const meeting = require("../controllers/meeting.controller");


//create a meeting
router.post('/', meeting.create);
//get all meetings 
router.get('/', meeting.getAll);
//get a meeting
router.get('/:uid', meeting.getOne);
//update a meeting
router.put('/:uid', meeting.update);
//delete a meeting
router.delete('/:uid', meeting.delete);
// get count of all meetings
router.get('/:uid/count', meeting.getCount);
// get total meetings till date
router.get('/totalCount',meeting.totalCount)


module.exports = router;