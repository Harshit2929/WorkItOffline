const {
    app,
    connection,
    express
} = require("./imports")

require('dotenv').config();

const {User, Meeting, MeetingUser, Transaction, Shg} = require("./sequelize")

const userRoutes = require("./routes/users.route");
const meetingRoutes = require("./routes/meetings.route");

app.use(express.json());

/* Middlewares */
app.use("/users", userRoutes);
app.use("/meetings", meetingRoutes);

app.listen(process.env.PORT, ()=>{
    console.log(`Server Started at Port ${process.env.PORT}`)
})
