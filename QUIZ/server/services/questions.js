const mysqlConnection = require('../db-conn');

exports.get_questions = function (req, res) {
    mysqlConnection.query('SELECT * FROM QUESTIONS limit 5', function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.send({ data: response });
        }
    });
}