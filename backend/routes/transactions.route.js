let express = require('express');
let router = express.Router();
let transactions = require("./../controllers/transactions.controller");


//get all meetings 
router.get('/', transactions.getAll);

//get all meetings of specefic SHG
router.get('/shg/:shg_id', transactions.getTransactionOfSHG);

//get all meetings of specefic user
router.get('/user/:uid', transactions.getTransactionOfUser);

//create Transaction
router.post('/', transactions.createTransaction);


module.exports = router;