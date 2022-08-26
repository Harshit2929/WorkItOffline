const express = require('express');
const router = express.Router();
const activity = require("./../controllers/activity.controller")

//create a meeting
router.post('/', activity.create);
//get all acticities for a shg
router.get('/:shg_id', activity.findAll);

module.exports = router;