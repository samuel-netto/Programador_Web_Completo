const { DataTypes } = require('sequelize');
const connection = require('../database/conection');

Resposta = connection.define('respostas', {

    resposta: {
        type: DataTypes.TEXT, //varchar
        allowNull: false
    },
    idPergunta: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
});