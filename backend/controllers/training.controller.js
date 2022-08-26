const Training = require("./../models/training.model");

exports.create = async(req, res) => {
    if(!req.body.title){
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
    const newa=await Training.create(req.body);
    res.json(newa);
};

exports.findAll = async(req, res) => {
    const tid = req.params.tid;
    const activities = await Training.findAll({
        where: {
            tid:tid
        }
    });
    res.json(activities);
}

