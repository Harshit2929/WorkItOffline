const {
    app,
    connection
} = require("./imports")

require('dotenv').config();

const {User} = require("./sequelize")

app.listen(process.env.PORT, ()=>{
    console.log(`Server Started at Port ${process.env.PORT}`)
})