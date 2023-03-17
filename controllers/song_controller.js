const express = require("express")

const router = express.Router()
const ensureLoggedIn = require("./../middleware/ensure_logged_in")

const db = require("./../db/database")

router.get("/", (req, res) => {
  const sql = "SELECT id, name, difficulty, scores FROM songs ORDER BY id asc;"

  db.query(sql, (err, dbRes) => {
    const songs = dbRes.rows

    res.render("index", { songs: songs })
  })
})






router.get("/songs/:id", ensureLoggedIn, (req, res) => {
  const sql = `select id, name, scores from songs where id = $1;`

  db.query(sql, [req.params.id], (err, dbRes) => {
    if (err) {
      console.log(err)
    } else {
      const song = dbRes.rows[0]
      res.render("song_details", { song })
    }
  })
})




router.post("/songs", ensureLoggedIn, (req, res) => {
  const sql = `
    INSERT INTO songs (scores) 
    VALUES ($1) WHERE id = ${req.body.id};
  `

  db.query(sql, (err, dbRes) => {
      res.redirect("/")
    }
  )
})





router.post("/songs/:song_id", (req, res) => {
    const songId = req.body.song_id
    const scores = req.body.score
    db.query(updateSql(songId, scores), (err, dbRes) => {
        console.log(err)
        res.redirect(`/`)
    }
  )
})




function updateSql (songId, score) {

return `UPDATE songs SET scores = ${score} WHERE id = ${songId}`

}


module.exports = router
