const express = require('express');

const app = express();

PORT = process.env.PORT || 3000;

app.get('/', function (req, res) {
  res.send('<h1>hola clase</h1>');
});

app.listen(PORT, () => {
  console.log(`Servidor a la escucha en puerto: ${PORT}...`);
});

module.exports = app;
