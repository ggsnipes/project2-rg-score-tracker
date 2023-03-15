const express = require("express")

const router = express.Router()
const ensureLoggedIn = require("./../middleware/ensure_logged_in")

const db = require("./../db/database")

router.get("/", (req, res) => {
  const sql = "SELECT id, name, difficulty, scores FROM songs;"

  db.query(sql, (err, dbRes) => {
    const songs = dbRes.rows

    res.render("index", { songs: songs })
  })
})



// router.get("/songs/new", ensureLoggedIn, (req, res) => {
//   res.render("new_song")
// })



router.get("/songs/:id", ensureLoggedIn, (req, res) => {
  const sql = `select id, name, scores from songs where id = $1;`
  console.log(sql)

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





router.get("/songs/:song_id/edit", (req, res) => {

  const sql = `SELECT * FROM songs WHERE id = $1;`

  db.query(sql, [req.params.song_id], (err, dbRes) => {
    if (err) {
      console.log(err)
    } else {
      const song = dbRes.rows[0]
      res.render("edit_song", { song: song })
    }
  })
})




router.put("/songs/:song_id", (req, res) => {
  const sql = `UPDATE songs SET score = $1 WHERE id = $2;`

  db.query(
    sql,
    [req.body.scores, req.params.song_id],
    (err, dbRes) => {
      res.redirect(`/songs/${req.params.song_id}`)
    }
  )
})

// router.delete("/songs/:dish_id", (req, res) => {
//   const sql = `DELETE FROM songs WHERE id = $1;`

//   db.query(sql, [req.params.dish_id], (err, dbRes) => {
//     res.redirect("/")
//   })
// })

module.exports = router
