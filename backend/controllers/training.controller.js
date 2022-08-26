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
    const activities = await Training.findAll();
    res.json(activities);
}


exports.findByShg = async (req, res)=>{
    let act = await Training.findAll({
        where:{
            shg_id:req.params.shg_id
        }
    });
    res.json(act);
}