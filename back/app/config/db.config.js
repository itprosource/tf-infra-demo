const fs = require('fs');
const terraformOutput = JSON.parse(fs.readFileSync('../db.json', 'utf8'));

module.exports = {
  HOST: terraformOutput.db,
  USER: "admin",
  PASSWORD: "2-sAD-sACK",
  DB: "db",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
