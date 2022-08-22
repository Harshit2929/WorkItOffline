var express = require('express');
var router = express.Router();
const user = require("../controllers/user.controllers");

router.post('/', user.create);


module.exports = router;