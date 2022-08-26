const express = require('express');
const router = express.Router();
const training = require("../controllers/training.controller");

//create a training
router.post('/', training.create);
//get all trainings
router.get('/', training.findAll);

router.get('/:shg_id', training.findByShg);
module.exports = router;
