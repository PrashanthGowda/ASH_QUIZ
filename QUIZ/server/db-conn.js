const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Root@1234',
    database: 'ASHRAMA_QUIZ'
});

module.exports = connection;
