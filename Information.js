const mysql = require("mysql");
const inquirer = require("inquirer");
const cTable = require("console.table");
const app = require("./server")


var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Fall2019",
  database: "employees_db",
  multipleStatements: true
});

const ShowEmployees = () => {
  connection.query(
    "SELECT employee.id, employee.first_name, employee.last_name, role.title, role.salary, department.department;",
    function(error, results, fields) {
      if (error) throw error;
     // app.start();
    }
    )
}


const ShowDepartments = () => {
  connection.query(
    "SELECT"
  )
}