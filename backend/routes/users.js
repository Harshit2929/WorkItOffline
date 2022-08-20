var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/twilio', function(req, res) {
  console.log(req.body)
  res.json({
    message:"Returned"
  })

});

module.exports = router;
