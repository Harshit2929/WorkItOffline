const {
    app,
    connection,
    express
} = require("./imports")

require('dotenv').config();

const {User} = require("./sequelize")

const userRoutes = require("./routes/users.route");




app.use(express.json());

/* Middlewares */
app.use("/users", userRoutes);



app.listen(process.env.PORT, ()=>{
    console.log(`Server Started at Port ${process.env.PORT}`)
})
