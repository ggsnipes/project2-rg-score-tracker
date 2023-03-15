const express = require('express')
const app = express()
const port = process.env.PORT || 3000
const session = require('express-session')

const sessionController = require('./controllers/session_controller')
const userController = require('./controllers/user_controller')
const songController = require('./controllers/song_controller')

const logger = require("./middleware/logger")


app.set("view engine", "ejs")

app.use(logger)
app.use(express.static("public"))
app.use(express.urlencoded({ extended: true }))

app.use(
    session({
        secret: process.env.SESSION_SECRET || "bbbbb",
        resave: false,
        saveUninitialized: true
    })
)

// app.get("/", (req, res) => {
//     res.render("index")
// })

app.use(songController)
app.use(userController)
app.use(sessionController)



app.listen(port, () => {
    console.log(`listening on port ${port}`)
})