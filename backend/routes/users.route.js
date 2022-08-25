var express = require('express');
var router = express.Router();
const user = require("../controllers/user.controllers");

router.post('/', user.create);
//get all users
router.get('/', user.getAll);
//get a user
router.get('/:uid', user.getOne);
//get all meetings of a user
router.get('/meetings', user.getMeetings);
//get all transactions of a user
// router.get('/:uid/transactions', user.getTransactions);

module.exports = router;