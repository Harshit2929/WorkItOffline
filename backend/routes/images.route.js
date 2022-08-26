const express = require('express');
const router = express.Router();
let {upload}= require("./../imports");

//create a route for uploading images
router.post('/', upload.array('files'), (req,res)=>{
    res.json({ message: "Successfully uploaded files" });
});

router.get('/', (req,res)=>{
    res.json({ message: "Successfully uploaded files" });
});


module.exports = router;