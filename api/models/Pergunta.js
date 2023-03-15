const { DataTypes } = require("sequelize");

const connection = require("../database/connection");

const Pergunta = connection.define("perguntas", {
  titulo: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  descricao: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  
});

Pergunta.sync();

module.exports = Pergunta;