const User = require("./../models/user.model");
const Meeting = require("./../models/meeting.model");

exports.create = async (req, res) => {
    try{
        console.log(req.body)
        const newUser = await Meeting.create(req.body);
        res.json(newUser);
    }catch(error){
        res.status(400).end(error);
    }
};