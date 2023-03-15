const Contato = require("../models/Contato");

function formContato(req, res) {
    res.render('admin/mostrarcontatos');
  }
  
function saveContato(req, res) {
    const { Email, Telefone, Endereço1, Endereço2, Cidade, Estado, Cep, Comentário } = req.body;
    try {
        Contato.create({
            Email,
            Telefone,
            Endereço1,
            Endereço2, 
            Cidade, 
            Estado,
            Cep, 
            Comentário
        
        })
    } catch (error) {
        console.log(error);
    }
    res.redirect('/contato/cadastro');
}

async function listaContato(req, res) {
    const msgError = await req.consumeFlash('error');
    const msgSuccess = await req.consumeFlash('success');
    Contato.findAll().then(Contato => {
        res.render('mostrarcontatos', { Contato, msgSuccess, msgError });
    });
}

module.exports = {formContato ,saveContato, listaContato};