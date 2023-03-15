const Sequelize = require("sequelize");

const connection = new Sequelize("bdpizzaria", "root", "S041500xtucano!", {
  host: "localhost",
  dialect: "mysql",
  timezone: "-03:00"
});

module.exports = connection;