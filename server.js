const express = require('express')
const app = express()
const port = process.env.PORT || 3000
const session = require('express-session')

const sessionController = require('./controllers/session_controller')
const userController = require('./controllers/user_controller')


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


app.listen(port, () => {
    console.log(`listening on port ${port}`)
})