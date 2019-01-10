const mysqlConnection = require('../db-conn');

exports.get_questions = function (req, res) {
    let questions = JSON.parse(req.params.questions);
    mysqlConnection.query('SELECT * FROM QUESTIONS WHERE question_id IN (?)', [questions], function (error, response) {
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
    SELECT r.* FROM QUESTIONS r
		WHERE (
		  SELECT COUNT(*) FROM QUESTIONS r1
		  WHERE r.category_id = r1.category_id AND r.question_id < r1.question_id
		) <= 2
		ORDER BY r.category_id ASC, RAND() limit 5
    `
    mysqlConnection.query(sql, function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.status(200).send({ randomQuestions: response });
        }
    });
}


exports.get_load_questions_to_be_asked = function (req, res) {
    let sql = `
     SELECT questions_limit as common, questions_limit_level_1 as level_1, questions_limit_level_2 as level_2, questions_limit_level_3 as level_3  from AGE_GROUP where age_group = ?
    `
    let participant = req.params.participant;
    mysqlConnection.query(sql, participant, function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.send({data: response});
        }
    });
}