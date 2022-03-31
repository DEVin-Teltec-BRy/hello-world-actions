const express = require('express')
const app = express();

app.get("/test", (req, res) => {
  res.status(200).send("Hello DevInHouse")
})

app.get("/", (req, res) => {
  res.status(200).send("Bem-vindo DevInHouse com Github Actions")
})

module.exports = app;