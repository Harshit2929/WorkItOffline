const User=require('../sequelize').User

// Create and Save a new Tutorial
exports.create = (req, res) => {
    if(!req.body.title){
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
const newUser=await User.create(req.body);
res.json(newUser);
};
// Retrieve all Tutorials from the database.
exports.getAll = (req, res) => {
    const users = await User.findAll();
    res.json(users);  
};
// Find a single Tutorial with an id
exports.getOne = (req, res) => {
  
};
// Update a Tutorial by the id in the request
exports.update = (req, res) => {
  
};
// Delete a Tutorial with the specified id in the request
exports.delete = (req, res) => {
  
};
// Delete all Tutorials from the database.
exports.deleteAll = (req, res) => {
  
};
// Find all published Tutorials
exports.findAllPublished = (req, res) => {
  
};