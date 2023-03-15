const { DataTypes } = require('sequelize');
const connection = require('../database/conection');

Pergunta = connection.define('perguntas', {

    titulo: {
    type: DataTypes.STRING, //varchar
    allowNull: false
    },
    descricao: {
     type: DataTypes.STRING,
     allowNull: false
    }
});

Pergunta.sync();

module.exports = Pergunta;
