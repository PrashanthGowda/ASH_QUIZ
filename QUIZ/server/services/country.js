const mysqlConnection = require('../db-conn');

exports.get_all_countries = function (req, res) {
    mysqlConnection.query('SELECT * FROM COUNTRIES', function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.send({ data: response });
        }
    });
}