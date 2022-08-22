const express = require('express');
const router = express.Router();

router.post('/twilio', function(req, res) {
    console.log(req.body)
    res.json({
      message:"Returned"
    })
  
  });