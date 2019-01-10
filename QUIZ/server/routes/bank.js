const router = require('express').Router();

const userservices = require('../services/bank')

router.post('/add-bank-details', userservices.create_bank_details);

module.exports = router;

