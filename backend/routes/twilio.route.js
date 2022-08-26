const express = require('express');
const router = express.Router();

/*

Accepts 
1. phone number => user => uid => check if this is AO or not
// if AO 
// then add Activity
// else dont and send failed not allowed permission



*/
router.post('/addActivity', (req,res)=>{
    try{
        let {todo, message, from} = req.body;
        
        console.log(req.body)
        res.json({});

    }catch(error){
        res.status(400).json()
    }    
})


module.exports = router;