const Pergunta = require("../models/Pergunta");

function obterPerguntas(req, res) {
    Pergunta.findAll({
        order: [['id', 'desc']]
    }).then(perguntas => {
        if (perguntas != undefined || perguntas != '') {
            res.status(200).json(perguntas);
        } else {
            res.status(200).json({ error: 'Não existe dados a serem retornados!' });
        }

    }).catch(err => {
        res.status(400).json({ error: 'O servidor não conseguiu retornar os dados!' });
    });
}

function salvaPergunta(req, res) {
    const { titulo, descricao } = req.body;
    if (titulo == undefined || titulo == '') {
        res.status(202).json({ error: 'O título deve ser informado!' });
    } else if (descricao == undefined || descricao == '') {
        res.status(202).json({ error: 'A descrição deve ser informada!' });
    } else {
        Pergunta.create({
            titulo,
            descricao
        }).then((pergunta) => res.status(201).json(pergunta)).catch(err => {
            res.status(400).json({error: 'Não foi possível salvar a pergunta'});
        });
    }
}

function excluiPergunta(req, res) {
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

function atualizaPergunta(req, res) {
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

module.exports = { obterPerguntas, salvaPergunta, excluiPergunta, atualizaPergunta };