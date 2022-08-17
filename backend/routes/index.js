const express = require('express');
const router = express.Router();
const db=require('../connection')
/* GET home page. */
// a sample query
router.get('/', function(req, res, next) {
  db.query('SELECT * FROM users', function (error, rows, fields) {
    if(!error){
      res.send(rows)
    }
    else{
      throw error
    }
  });
  // res.render('index', { title: 'hi' });
});

module.exports = router;
