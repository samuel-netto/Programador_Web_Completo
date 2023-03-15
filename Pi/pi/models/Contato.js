const { DataTypes } = require("sequelize");

const connection = require("../database/connection");

const Contato = connection.define("contatos", {
  Email: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  Telefone: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  Endereço1: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  Endereço2: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  Cidade: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  Estado: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  Cep: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  Comentário: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

Contato.sync().then(() => {});

module.exports = Contato;