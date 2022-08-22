const Shg=require('../sequelize').Shg
const Meeting=require('../sequelize').Meeting
// Create and Save a new Tutorial
exports.create = (req, res) => {
    if(!req.body.title){
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
const newUser=await Shg.create(req.body);
res.json(newUser);
};
// Retrieve all SHGs from the database.
exports.getAll = (req, res) => {
    const shgs = await Shg.findAll();
    res.json(shgs);  
};
// Find a single SHGs with an id
exports.getOne = (req, res) => {
  
};
// Update a SHGs by the id in the request
exports.update = (req, res) => {
  
};
// Delete a SHGs with the specified id in the request
exports.delete = (req, res) => {
  
};
// Delete all SHGs from the database.
exports.deleteAll = (req, res) => {
  
};
// Find all SHGs
exports.findAllPublished = (req, res) => {
  
};
