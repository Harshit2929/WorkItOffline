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

// Retrieve all users from the database.
exports.getAll = (req, res) => {
    User.findAll().then((data) => {
        res.json(data)
        console.log("this is data"+data)
    })
    .catch(err =>{
        res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving users."
          });
    })

    // res.json(users);  
};
// Find a single User with an id
exports.getOne = (req, res) => {
const id=req.params.uid
User.findByPk(id)
.then(data => {
  res.json(data)
})
.catch(err => {
  res.status(500).send({
    message: "Error retrieving user with id=" + id
  });
});
};

// exports.update= (req,res) =>{
//     const id=req.params.uid
//     User.update(req.body,{
//         where:{
//             uid:id
//         }
//     })
//     .then(data => {
//         if (data) {
//             res.send(data);
//         } else {
//             res.status(404).send({
//               message: `Cannot find user with id=${id}.`
//             });
//         }
//       }).catch(err => {
//         res.status(500).send({
//           message: "Error updating user with id=" + id
//         });
//       }
//     );
// }

// exports.delete = (req, res) => {
// const id=req.params.uid
// User.destroy({
//   where:{
//       uid:id
//   }
// })
// .then(data => {
//   if (data) {
//     res.send(data);
//   } else {
//     res.status(404).send({
//       message: `Cannot find user with id=${id}.`
//     });
//   }
// }).catch(err => {
//   res.status(500).send({
//     message: "Error deleting user with id=" + id
//   });
// }
// );
// }

// get all meetings of a user
exports.getMeetings=async (req,res) => {
    // const id=req.params.uid;
    try{
        query1="SELECT * FROM Users"

        // query1="SELECT * FROM Users INNER JOIN MeetingUsers ON Users.uid=MeetingUsers.uid  WHERE Users.uid=?"
const users=await User.query(query1 ,{type: sequelize.QueryTypes.SELECT})
res.json(users)
console.log(users)
}
catch(err){
    res.status(500).send({
        message: "Error retrieving users with id=" +err.message            
      });
}

}

