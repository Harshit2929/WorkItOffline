const Activity = require("./../models/activity.model");
let isao = require("./../middlewares/isao.middlware");
exports.create = async(req, res) => {
    try{
        const newa = await Activity.create(req.body);
        res.json(newa);
    }catch(error){
        res.status(400).send(error);
    }   
};
exports.getAllActivities = async (req,res)=>{
    try{
        const shg_id = req.params.shg_id;
        
    const activities = await Activity.findAll({
        where: {
            shg_id: shg_id
        }
    });
    res.json(activities);
    }catch(error){
        res.status(401).send(error);
    }   
    
}