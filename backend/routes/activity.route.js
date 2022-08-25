const express = require('express');
const router = express.Router();
const activity = require("./../controllers/activity.controller")

//create a meeting
router.post('/', activity.create);

module.exports = router;