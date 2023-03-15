const Perguntas = require('../models/pergunta');

function pergunta(req, res) {
    res.render('pages/perguntar');
}

function save(req, res) {
  const tituloPergunta = req.body.titulo; 
  const descricaoPergunta = req.body.descricao;
  
  Pergunta.create({
    titulo: tituloPergunta,
    descricao: descricaoPergunta
  }).then(()=> res.redirect('/'))
}

module.exports = {pergunta, save};
