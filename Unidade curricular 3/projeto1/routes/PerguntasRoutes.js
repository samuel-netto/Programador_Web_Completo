const {Router} = require('express');
const perguntasController = require('../controllers/PerguntasController');

const Pergunta = require('../models/pergunta')

const router = Router();

router.get('/perguntar', perguntasController.pergunta);

router.post('/perguntar',perguntasController.save);

  module.exports = router;