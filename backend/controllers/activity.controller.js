const Activity = require("./../models/activity.model");

exports.create = async(req, res) => {
    if(!req.body.title){
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
    const newa=await Activity.create(req.body);
    res.json(newa);
};