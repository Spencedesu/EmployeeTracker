const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  port: 3306,
  
  user: "root",

  password: "Fall2019",
  database: "employee_db"
})