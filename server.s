const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();

app.use(cors());
app.use(express.json());

const pessoasRoutes = require('./routes/pessoas.route');
app.use('/pessoas', pessoasRoutes);

app.get('/', (req, res) => {
  res.send('API Controle de Acesso rodando 🚀');
});

app.listen(process.env.PORT, () => {
  console.log(`Servidor rodando na porta ${process.env.PORT}`);
});
