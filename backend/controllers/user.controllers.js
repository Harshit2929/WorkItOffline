const User = require("./../models/user.model");

exports.create = async (req, res) => {
    try{
        console.log(req.body)
        const newUser = await User.create(req.body);
        res.json(newUser);
    }catch(error){
        res.status(400).end(error);
    }
};