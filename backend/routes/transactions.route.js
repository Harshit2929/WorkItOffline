let express = require('express');
let router = express.Router();
let transactions = require("./../controllers/transactions.controller");
let sms = require("./../functions/sms");

//get all meetings 
router.get('/', transactions.getAll);

//get all meetings of specefic SHG
router.get('/shg/:shg_id', transactions.getTransactionOfSHG);

//get all meetings of specefic user
router.get('/user/:uid', transactions.getTransactionOfUser);

//create Transaction
router.post('/', transactions.createTransaction);

router.get('/sendsms', (req,res)=>{
    sms.sendsms(req,res)

})
module.exports = router;