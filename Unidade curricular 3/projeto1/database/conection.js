const {Sequelize} = require('sequelize');

const connection = new Sequelize('bdperguntasrespostas', 'root', 'aluno', {
    host: 'localhost',
    dialect: 'mysql',
    timezone: '-03:00',
  });

module.exports = connection;