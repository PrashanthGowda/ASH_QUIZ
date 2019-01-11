const mysqlConnection = require('../db-conn');


exports.create_bank_details = function (req, res) {
    let details = {
        'account_holder': req.body.user_name,
        'account_number': req.body.account_number,
        'bank_name': req.body.bank_name,
        'city': req.body.city,
        'branch': req.body.branch,
        'ifsc': req.body.ifsc,
        'mobile_number': req.body.mobile,
        'bank_details_created_at': Date.now()
    }
    
    mysqlConnection.query('INSERT INTO BANK_DETAILS SET ?', details, function (error, results, fields) {
        if (error) {
            res.status(500).send({
                'code': 400,
                'message': 'Bank Details Not Submitted Contact RKM Math'
            })
        } else {
            res.status(200).send({
                'code': 200,
                'success': 'Bank Details Update'
            });
            
        }
    });
}