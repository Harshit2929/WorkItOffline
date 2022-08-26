const express = require('express');
const router = express.Router();
const training = require("../controllers/training.controller");

//create a training
router.post('/', training.create);
//get all trainings
router.get('/:tid', training.findAll);
module.exports = router;
