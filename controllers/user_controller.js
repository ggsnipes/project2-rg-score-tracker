const express = require("express")
const router = express.Router()
const bcrypt = require("bcrypt")
const saltRounds = 10

const db = require("./../db/database")

/*

router.get("/users") // list of users
router.post("/users") // create a user
router.delete("/users/:id") // delete a user
router.put("/users/:id") // update single user
router.get("/users/new") // get new user form
router.get("/users/:id/edit") // get existing user form
router.get("/users/:id") // get single user

*/

router.get("/users", (req, res) => {
    res.send("dont press this for now thanks")
})


router.post("/users", (req, res) => {
    const { username, email, password } = req.body
    const sqlCheck = `SELECT * FROM users WHERE email = $1;`

    db.query(sqlCheck, (err, dbRes) => {
        if(err){
            const sql = `INSERT INTO users VALUES ('$1, '$2');`
            sqlSignUp(username, email, password)
            res.redirect("/")
        } else {
            res.redirect("/login")
        }
    })


})


router.get("/users/new", (req, res) => {
    res.render("signup")
})


function sqlSignUp(username, email, password) {
    bcrypt.hash(password, saltRounds, (err, hash) => {
        const sql = `INSERT INTO users (username, email, password_digest) VALUES ('${username}', '${email}', '${hash}');`

        db.query(sql, (err, dbRes) => {
            console.log(err)
        })
    })

}



module.exports = router