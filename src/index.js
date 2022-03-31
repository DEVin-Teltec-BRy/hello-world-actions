const app = require('./app');
const port = process.env.PORT || 3000;
const urlBD = process.env.URL_BD || '';

app.listen(port, () => {
  console.log("🚀 Subiu o server");
})