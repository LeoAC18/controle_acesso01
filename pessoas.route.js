const express = require('express');
const router = express.Router();
const pessoasController = require('../controllers/pessoas.controller');

router.get('/', pessoasController.listar);

module.exports = router;
