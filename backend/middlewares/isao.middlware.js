let {User} = require("./../models/user.model");


exports.checkAO = (req, res, next)=>{
    try{
        let {uid} = req.body;
        let data = User.findAll({where: { uid: uid}})
        console.log(data)
        next()
    }catch(error){
        res.status(400).send(error);
    }
};