const Meeting=require('../sequelize').Meeting

exports.create = (req, res) => {
    if(!req.body.title){
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }
const newmeeting=await meeting.create(req.body);
res.json(newmeeting);
};
// Retrieve all meetings from the database.
exports.getAll = (req, res) => {
    Meeting.findAll().then((data) => {
        res.json(data)
    })
    .catch(err =>{
        res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving meetings."
          });
    })

    res.json(meetings);  
};
// Find a single meeting with an id
exports.getOne = (req, res) => {
const id=req.params.uid
Meeting.findByPk(id)
.then(data => {
  if (data) {
    res.send(data);
  } else {
    res.status(404).send({
      message: `Cannot find meeting with id=${id}.`
    });
  }
})
.catch(err => {
  res.status(500).send({
    message: "Error retrieving meeting with id=" + id
  });
});

  
};
// Update a meeting by the id in the request
exports.update = (req, res) => {
    const id=req.params.uid
    Meeting.update(req.body, {
        where: { uid: id }
      })
        .then(num => {
          if (num == 1) {
            res.send({
              message: "meeting table was updated successfully."
            });
          } else {
            res.send({
              message: `Cannot update meeting with id=${id}. Maybe meeting was not found or req.body is empty!`
            });
          }
        })
        .catch(err => {
          res.status(500).send({
            message: "Error updating meeting with id=" + id
          });

        })
};
// Delete a meeting with the specified id in the request
exports.delete = (req, res) => {
    const id = req.params.uid;
    Meeting.destroy({
      where: { uid: id }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "meeting was deleted successfully!"
          });
        } else {
          res.send({
            message: `Cannot delete meeting with id=${id}. Maybe meeting was not found!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Could not delete meeting with id=" + id
        });
      }); 

};
exports.getCount=(req,res) =>{
  // const id = req.params.uid;
  try{
    const id=req.params.uid;
query1="SELECT COUNT(Meetings.meeting_id) FROM Meetings INNER JOIN MeetingUsers ON Meetings.meeting_id=MeetingUsers.meeting_id WHERE MeetingUsers.uid=? AND Meeting.meeting_date < NOW()"
const meetingsAttended=await User.query(query1 ,{replacements: [id],type: sequelize.QueryTypes.SELECT})
res.json(meetingsAttended)
}
catch(err){
    res.status(500).send({
        message: " error message "+err.message            
      });
}

}
exports.totalCount=(req,res) =>{
  try{
query1="SELECT COUNT(DISTINCT meeting_id) FROM Meetings"
const totalMeetings=await User.query(query1 ,{type: sequelize.QueryTypes.SELECT})
res.json(totalMeetings)
  }
  catch(err){
    res.status(500).send({
        message: " error message "+err.message            
      });
}


}