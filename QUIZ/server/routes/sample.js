const router = require('express').Router();

const sample = require('../services/sample');

router.get('/sample', sample.sayhi);

module.exports = router;