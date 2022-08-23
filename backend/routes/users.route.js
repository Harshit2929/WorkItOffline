var express = require('express');
var router = express.Router();
const user = require("../controllers/user.controllers");

router.post('/', user.create);
//get all users
router.get('/', user.getAll);
//get a user
router.get('/:uid', user.getOne);
//update a user
router.put('/:uid', user.update);
//delete a user
router.delete('/:uid', user.delete);
//get all meetings of a user
router.get('/:uid/meetings', user.getMeetings);
//get all transactions of a user
router.get('/:uid/transactions', user.getTransactions);

module.exports = router;