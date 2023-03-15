const {Router} = require('express');

const respostasController = require('../controllers/RespostasController')

const router = Router();

router.get('/:id', respostasController.resposta);

router.post('/', respostasController.save);

  module.exports = router;