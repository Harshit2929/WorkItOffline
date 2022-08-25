let Transactions = require("./../models/transaction.model");
let connection = require("./../imports");

// All operations of transactions
/*
1. Get All Transactions -- admin
2. get All transactions of SHG --shgadminlevel
3. get All transactions of specefic user --userwise ==baad ke liye

4. ========>>> DONT NEEDLoan Disbersal => from governemt
6. Loan Disbersal => for user
5. Repayment ==> userwise
7. 

*/

// Our bias is 
// amount = +ve means, user added his contributions
// amount = -ve means, user took the loan from shg

// contributions will be done regularly => Weekly or monthly
// additionally Repayment needs to be done if loan taken

exports.getAll = async (req, res) => {
    const allTransactions = await Transactions.findAll();
    res.json(allTransactions);  
};


// Get Transactions by shg_id
exports.getTransactionOfSHG = async (req, res) => {
    try{
        let {shg_id} = req.params;
        let allTransactions = await Transactions.findAll({where: {shg_id: shg_id}});
        res.json(allTransactions)
    }catch(error){
        res.status(400).end(error);
    }
};

// Get Transactions by uid
exports.getTransactionOfUser = async (req, res) => {
    try{
        let {uid} = req.params;
        let allTransactions = await Transactions.findAll({where: {uid: uid}});
        res.json(allTransactions)
    }catch(error){
        res.status(400).end(error);
    }
};


// Get Transactions by uid
exports.createTransaction = async (req, res) => {
    try{
        let obj = req.body;
        let transaction = await Transactions.create(obj);
        await Transactions.sync({alter: true})
        res.json(transaction);

    }catch(error){
        res.status(400).send(error);
    }
};

