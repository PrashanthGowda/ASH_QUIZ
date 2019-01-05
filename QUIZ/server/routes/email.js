const router = require('express').Router();

const emailservices = require('../services/email');

router.get('/sendemail', emailservices.sendemail);
module.exports = router;