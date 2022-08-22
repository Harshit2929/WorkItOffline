const User=require('../sequelize').User

// Create and Save a new user
exports.create = (req, res) => {
    if(!req.body.title){
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
const newUser=await User.create(req.body);
res.json(newUser);
};
// Retrieve all users from the database.
exports.getAll = (req, res) => {
    User.findAll().then((data) => {
        res.json(data)
    })
    .catch(err =>{
        res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving users."
          });
    })

    res.json(users);  
};
// Find a single User with an id
exports.getOne = (req, res) => {
const id=req.params.uid
User.findByPk(id)
.then(data => {
  if (data) {
    res.send(data);
  } else {
    res.status(404).send({
      message: `Cannot find user with id=${id}.`
    });
  }
})
.catch(err => {
  res.status(500).send({
    message: "Error retrieving user with id=" + id
  });
});

  
};
// Update a User by the id in the request
exports.update = (req, res) => {
    const id=req.params.uid
    User.update(req.body, {
        where: { uid: id }
      })
        .then(num => {
          if (num == 1) {
            res.send({
              message: "User table was updated successfully."
            });
          } else {
            res.send({
              message: `Cannot update user with id=${id}. Maybe user was not found or req.body is empty!`
            });
          }
        })
        .catch(err => {
          res.status(500).send({
            message: "Error updating user with id=" + id
          });

        })
};
// Delete a user with the specified id in the request
exports.delete = (req, res) => {
    const id = req.params.uid;
    User.destroy({
      where: { uid: id }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "User was deleted successfully!"
          });
        } else {
          res.send({
            message: `Cannot delete User with id=${id}. Maybe User was not found!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Could not delete User with id=" + id
        });
      }); 

};
