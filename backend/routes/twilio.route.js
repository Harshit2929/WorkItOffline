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
let f = (str)=>{
    let ans = ``
    for(let i=0;i<str.length;i++){
        if(str[i]==' ') continue;
        if(str[i] == '{' || str[i] == '}'){
            continue;
        }
        if(str[i] == ','){
            ans += '\n';
        }
        if(str[i] == '"'){
            continue;
        }
        ans += str[i];
    }
    return ans;
}
let d = (str)=>{
    let ans = `{`
    let a = str.split('\n');
    for(let i=0;i<a.length;i++){
        let ta = a[i].split(':');
        ans += `${ta[0]}: ${ta[1]}`;
        if(i!=a.length-1){
            ans += `,`;
        }
    }
    ans += `}`;
}
router.post('/addActivity', async (req,res)=>{
    try{
        let {todo, message, from} = req.body;
        console.log(req.body);  
console.log("A")        
        if(await User.findAll({where:{phone_number:from}})){
            console.log("B");
                let user = await User.findAll({where:{phone_number:from}})
            console.log(user)
        console.log(user.length);
            if(user[0].is_ao){
                // console.log(D);
                let x = message;
                let ch = x[x.length-1];
                x.replace(ch, '}');
                let msg = JSON.parse(x);
        

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

