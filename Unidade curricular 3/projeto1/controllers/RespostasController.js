const Resposta = require('../models/Resposta');
const Pergunta = require('../models/Pergunta')

function resposta(req, res) {
  const id = req.params.id
  Resposta.findAll({
    where: {
      idPergunta: id
    }
  }).then(respostas => {
      Pergunta.findByPk(id).then(pergunta => {
        res.render('pages/responder', {pergunta, respostas});
      })
  }).catch(err => console.log(err))
}

function save(req, res) {
  //tem que ser igual ao atributo name de cada campo do 
  //formulário
  const resposta = req.body.resposta; 
  const idPergunta = req.body.idPergunta;

  Resposta.create({
    resposta: resposta,
    idPergunta: idPergunta
  }).then(()=> res.redirect(`/responder/${idPergunta}`))
  
}

module.exports = {resposta, save};