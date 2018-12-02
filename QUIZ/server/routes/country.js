const router = require('express').Router();

const countryservices = require('../services/country');

router.get('/get-all-countries', countryservices.get_all_countries);

module.exports = router;