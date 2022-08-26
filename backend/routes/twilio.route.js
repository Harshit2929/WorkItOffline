const express = require('express');
const router = express.Router();
let Activity = require("./../models/activity.model")
let User = require("./../models/user.model");
/*

Accepts 
1. phone number => user => uid => check if this is AO or not
// if AO 
// then add Activity
// else dont and send failed not allowed permission



*/
router.post('/addActivity', async (req,res)=>{
    try{
        let {todo, message, from} = req.body;
        
        if(await User.findAll({where:{phone_number:'945999119'}})){
            let user = await User.findAll({where:{phone_number:from}})
            console.log(user)
            if(user[0].is_ao){
                let msg = JSON.parse(message);

                Activity.create(msg)
                res.json({success:true})
            }else{
                res.status(400).json({success:false, message:"You are not allowed to add activity"});
            }
        }

    }catch(error){
        console.log(error)
        res.status(400).json()
    }    
})


module.exports = router;