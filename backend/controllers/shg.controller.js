const Shg=require('../sequelize').Shg
const Meeting=require('../sequelize').Meeting


 
// Create and Save a new Shg
exports.create = async (req, res) => {
    try{
        console.log(req.body)
        const newShg = await Shg.create(req.body);
        res.json(newShg);
    }catch(error){
        res.status(400).end(error);
    }
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
