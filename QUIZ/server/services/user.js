const mysqlConnection = require('../db-conn');

const voucher_codes = require('voucher-code-generator');


exports.create_user = function (req, res) {
    let user = {
        'user_name': req.body.user_name,
        'user_age': req.body.user_age,
        'user_gender': req.body.user_gender,
        'user_email': req.body.user_email,
        'user_mobile': req.body.user_mobile,
        'user_country': req.body.user_country,
        'user_state': req.body.user_state,
        'user_created_at': Date.now()
    }
    mysqlConnection.query('INSERT INTO USERS SET ?', user, function (error, results, fields) {
        if (error) {
            let errorMessage = '';

            if (error.code === 'ER_DUP_ENTRY') {
                errorMessage = 'User Already Exsist';
            }
            res.status(500).send({
                'code': 400,
                'message': errorMessage
            })
        } else {
            let user = results.insertId;
            mysqlConnection.query('SELECT user_age from USERS where user_id = ?', [results.insertId], function (error, results, fields) {
                if (error) {
                    res.status(500).send({
                        'code': 400,
                        'message': error
                    })
                } else {
                    res.status(200).send({
                        'code': 200,
                        'success': 'User registration sucessfull',
                        'user_id': user,
                        'user_age': results[0].user_age
                    });
                }
                
            });

            
        }
    });
}

exports.get_user = function (req, res) {
    let user = req.body.user;

    if (user) {
        mysqlConnection.query('SELECT user_name FROM USERS where user_id = ?', [user], function (error, results, fields) {
                if (error) {
                    res.status(500).send({
                        'code': 400,
                        'message': error
                    })
                } else {
                    res.status(200).send({
                        'code': 200,
                        'success': 'The User is',
                        'username': results[0].user_name
                    });
                }
                
            });
    }

}  


exports.user_quiz_details = function (req, res) {

    let user = req.body.user_id;

    if (req.body.total_correct_answers === 8 || req.body.total_correct_answers === 9) {
        req.body.voucher = voucher_codes.generate({
            prefix: "rkm-",
            length: 8,
            count: 1
        });
        req.body.voucher_amount = 200;
    } else if (req.body.total_correct_answers === 10) {
        req.body.voucher = voucher_codes.generate({
            prefix: "viveka-",
            length: 8,
            count: 1
        });
        req.body.voucher_amount = 300;
    }

    if (user) {
        let user_quiz_details = {
            'attended_quiz_questions': JSON.stringify(req.body.attended_quiz_questions),
            'answers_index': JSON.stringify(req.body.answers_index),
            'voucher': req.body.voucher[0],
            'total_time_taken': req.body.total_time_taken,
            'total_correct_answers': req.body.total_correct_answers,
            'total_question': req.body.total_question,
            'user_id': user,
            'quiz_created_at': Date.now(),
            'voucher_amount': req.body.voucher_amount
        }

        mysqlConnection.query('INSERT INTO USERS_QUIZ_DETAILS SET ?', user_quiz_details, function (error, results, fields) {
            if (error) {
                res.status(500).send({
                    'code': 400,
                    'failed': 'error ocurred'
                })
            } else {
                mysqlConnection.query('SELECT user_id, voucher, total_correct_answers as correct from USERS_QUIZ_DETAILS where user_quiz_id = ?', [results.insertId], function (error, results, fields) {
                    res.status(200).send({
                        'code': 200,
                        'voucher': results[0].voucher,
                        'voucher_amount': results[0].voucher_amount,
                        'correct': results[0].correct,
                        'user': results[0].user_id,
                        'success': 'voucher generated sucessfully'
                    });
                });

            }
        });
    } else {
        res.status(403).send({
            'code': 403,
            'failed': 'user not found'
        });
    }
}
