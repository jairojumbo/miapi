// app.js
const express = require('express');
const app = express();
const port = 3000;

// Middleware para parsear el cuerpo de las solicitudes en formato JSON
app.use(express.json());

// Rutas de la API
app.get('/', (req, res) => {
  res.send('¡Hola Mundo! Esta es mi API');
});

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});