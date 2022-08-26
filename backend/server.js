const {
    app,
    connection,
    express
} = require("./imports")

require('dotenv').config();

const {User, Meeting, MeetingUser, Transaction, Shg} = require("./sequelize")

const userRoutes = require("./routes/users.route");
const meetingRoutes = require("./routes/meetings.route");
const transactionRoutes = require("./routes/transactions.route");
const activityRoutes = require("./routes/activity.route");
const imageRoutes = require("./routes/images.route");
const trainingRoutes=require("./routes/training.route")
const twilioRoutes = require("./routes/twilio.route");

app.use(express.json());

/* Middlewares */
app.use("/users", userRoutes);
app.use("/transactions", transactionRoutes);
app.use("/activity", activityRoutes);
app.use("/images", imageRoutes);
app.use("/training", trainingRoutes);
app.use("/twilio", twilioRoutes);

app.get("/", (req, res) => {
    res.send("Hello World");
});

app.listen(process.env.PORT, ()=>{
    console.log(`Server Started at Port ${process.env.PORT}`)
})
