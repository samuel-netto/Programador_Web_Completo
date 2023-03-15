const { obterPerguntas, salvaPergunta, excluiPergunta, atualizaPergunta } = require('../controllers/PerguntaController');

const router = require('express').Router();

router.get('/', obterPerguntas);

router.post('/save', salvaPergunta);

router.delete('/:id', excluiPergunta);

router.put('/:id', atualizaPergunta);

module.exports = router;