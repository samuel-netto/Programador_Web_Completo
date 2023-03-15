const adminAuth = require('../middlewares/authAdmin');
const {saveContato, listaContato, formContato} = require('../controllers/ContatoController');

const router = require('express').Router();

router.get('/contatos/save', adminAuth, formContato);

router.post('/contatos/save', adminAuth, saveContato);

router.get('/contatos', adminAuth , listaContato);



module.exports = router;