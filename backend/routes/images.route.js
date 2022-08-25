const express = require('express');
const router = express.Router();
let {upload}= require("./../imports");

//create a meeting
router.post('/', upload.single('file'), (req,res)=>{
    console.log(req.body);
    console.log(req.file);
    res.json({ message: "Successfully uploaded files" });
});


module.exports = router;