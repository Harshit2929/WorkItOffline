const express = require('express');
const router = express.Router();
const activity = require("./../controllers/activity.controller")
let isao = require("./../middlewares/isao.middlware");

//create a meeting
router.post('/', activity.create);
//get
router.get('/:shg_id', activity.getAllActivities);

module.exports = router;