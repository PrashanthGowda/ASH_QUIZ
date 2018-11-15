const mysqlConnection = require('../db-conn');

/* exports.create_user = function (req, res) {
    console.log(req.body.user_name);
    let sql = "INSERT INTO USERS (`user_name`, `user_age`, `user_gender`, `user_email`, `user_mobile`, `user_created_at`) VALUES (?)"
    let value = [
        req.body.user_name,
        req.body.user_age,
        req.body.user_gender,
        req.body.user_email,
        req.body.user_mobile,
        new Date()
    ]
    mysqlConnection.query(sql, [value], function (err, result) {
        if (err) throw err;
        console.log("1 record inserted", result);
    });   
} */



exports.create_user = function (req, res) {
    let user = {
        "user_name": req.body.user_name,
        "user_age": req.body.user_age,
        "user_gender": req.body.user_gender,
        "user_email": req.body.user_email,
        "user_mobile": req.body.user_mobile,
        "user_created_at": new Date()
    }
    mysqlConnection.query('INSERT INTO users SET ?', user, function (error, results, fields) {
        if (error) {
            console.log("error ocurred", error);
            res.send({
                "code": 400,
                "failed": "error ocurred"
            })
        } else {
            console.log('The solution is: ', results);
            res.send({
                "code": 200,
                "success": "user registered sucessfully"
            });
        }
    });
}


exports.user_quiz_details = function (req, res) {

    let user = req.params.user_id;
console.log(req.body.quiz_questions)
    if (user) {
        let user_quiz_details = {
            "quiz_questions": req.body.quiz_questions,
            "answers_index": req.body.answers_index,
            "voucher": req.body.voucher,
            "total_time_taken": req.body.total_time_taken,
            "correct_answers": req.body.correct_answers,
            "total_question": req.body.total_question,
            "user_id": user,
            "quiz_created_at": new Date()
        }
        mysqlConnection.query('INSERT INTO USERS_QUIZ_DETAILS SET ?', user_quiz_details, function (error, results, fields) {
            if (error) {
                console.log("error ocurred", error);
                res.send({
                    "code": 400,
                    "failed": "error ocurred"
                })
            } else {
                console.log('The solution is: ', results);
                res.send({
                    "code": 200,
                    "success": "user registered sucessfully"
                });
            }
        });
    } else {
        res.send({
            "code": 403,
            "failed": "user not found"
        });
    }
}


/* exports.get_employees = function (req, res) {
    mysqlConnection.query('SELECT * FROM employee_details', function (error, response) {
        if (error) {
            return res.status(400).send({
                message: error
             });
        } else {
            return res.send({ data: response });
        }
    });
}

exports.get_particular_employee = function (req, res) {
    let emp_id = req.params.employee_id;
    if (emp_id) {
        mysqlConnection.query('Select * from employee_details where employee_id=?', emp_id, (error, response)=>{
            if (error) throw error;
            return res.send({employee: response})
        })
    } else {
        res.status(400).send({error: true, message: 'please provide employee id'})
    }
} */