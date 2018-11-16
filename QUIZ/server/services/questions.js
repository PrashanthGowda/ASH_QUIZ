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

exports.get_random_questions = function (req, res) {

    let sql = `
    SELECT r.* FROM ASHRAMA_QUIZ.QUESTIONS r
		WHERE (
		  SELECT COUNT(*) FROM ASHRAMA_QUIZ.QUESTIONS r1
		  WHERE r.category_id = r1.category_id AND r.question_id < r1.question_id
		) <= 2
		ORDER BY r.category_id ASC, RAND()
    `
    mysqlConnection.query(sql, function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.send({ data: response });
        }
    });
}
