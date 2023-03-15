const Sequelize = require("sequelize");

const connection = new Sequelize("bdperguntaserespostas", "root", "S041500xtucano!", {
  host: "localhost",
  dialect: "mysql",
  timezone: "-03:00"
});

module.exports = connection;