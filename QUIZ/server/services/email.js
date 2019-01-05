const mysqlConnection = require('../db-conn');
const nodemailer = require('nodemailer');

exports.sendemail = function (req, res) {
    let transporter = nodemailer.createTransport({
        service: 'Gmail',
        auth: {
            user: 'pgyfts365@gmail.com',
            pass: 'jp@giftvolo'
        }
    });


    let mailOptions = {
        from: 'pgyfts365@gmail.com',
        to: 'praveenj.pro@gmail.com',
        subject: 'Sending Email using Node.js',
        text: 'That was easy!'
    };

    transporter.sendMail(mailOptions, function (error, info) {
        if (error) {
            console.log(error);
        } else {
            console.log('Email sent: ' + info.response);
        }
    });
}