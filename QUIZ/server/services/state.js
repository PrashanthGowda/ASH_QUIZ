const mysqlConnection = require('../db-conn');

exports.get_all_states = function (req, res) {
    console.log('cocococ');
    console.log('req.params.country', req.params.country);
    let country = req.params.country;
    mysqlConnection.query('SELECT * FROM STATES where country_id = ?', country,  function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.send({ data: response });
        }
    });
}