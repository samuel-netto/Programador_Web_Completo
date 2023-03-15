const { salvaResposta, obterRespostas, atualizaResposta, excluiResposta} = require('../controllers/RespostaController');

const router = require('express').Router();

router.get('/', obterRespostas);

router.post('/save', salvaResposta);

router.delete('/:id', excluiResposta);

router.put('/:id', atualizaResposta);

module.exports = router;