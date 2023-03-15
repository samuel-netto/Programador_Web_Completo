const Pergunta = require("../models/Pergunta");

function obterRespostas(req, res) {
    Resposta.findAll({
        order: [['id', 'desc']]
    }).then(Respostas => {
        if (Respostas != undefined || Respostas != '') {
            res.status(200).json(Respostas);
        } else {
            res.status(200).json({ error: 'Não existe dados a serem retornados!' });
        }

    }).catch(err => {
        res.status(400).json({ error: 'O servidor não conseguiu retornar os dados!' });
    });
}

function salvaResposta(req, res) {
    const { titulo, descricao } = req.body;
    if (titulo == undefined || titulo == '') {
        res.status(202).json({ error: 'O título deve ser informado!' });
    } else {
        Pergunta.create({
            titulo,
            descricao
        }).then((pergunta) => res.status(201).json(pergunta)).catch(err => {
            res.status(400).json({error: 'Não foi possível salvar a pergunta'});
        });
    }
}

function excluiResposta(req, res) {
    const id = req.params.id;
    if(!isNaN(id)) {
        Pergunta.findByPk(id).then(pergunta => {
            if(pergunta != undefined) {
                Pergunta.destroy({ where: { id: id } }).then(()=> {
                    res.status(200).json({msg: 'Pergunta excluída com sucesso!'});
                }).catch(err => {
                    res.status(400).json({error: 'Houve um erro interno'});
                });
            } else {
                res.status(202).json({error: 'Não existe pergunta com este id'});
            }
        }).catch(err => {
            res.status(400).json({error: 'Houve um erro interno'});
        });
    } else {
        res.status(202).json({error: 'Não existe pergunta com este id'});
    }   
}

function atualizaResposta(req, res) {
    const id = req.params.id;
    if(!isNaN(id)) {
        Pergunta.findByPk(id).then(pergunta => {
            if(pergunta != undefined) {
                Pergunta.update(
                    {
                        titulo: req.body.titulo,
                        descricao: req.body.descricao
                    },
                    { 
                        where: { id: id } 
                    }).then(()=> {
                    res.status(200).json({msg: 'Pergunta alterada com sucesso!'});
                }).catch(err => {
                    res.status(400).json({error: 'Houve um erro interno'});
                });
            } else {
                res.status(202).json({error: 'Não existe pergunta com este id'});
            }
        }).catch(err => {
            res.status(400).json({error: 'Houve um erro interno'});
        });
    } else {
        res.status(202).json({error: 'Não existe pergunta com este id'});
    }
}

module.exports = { obterRespostas, salvaResposta, excluiResposta, atualizaResposta };