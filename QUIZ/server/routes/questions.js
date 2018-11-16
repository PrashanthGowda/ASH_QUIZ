const router = require('express').Router();

const questionservices = require('../services/questions');

router.get('/', questionservices.get_questions);

module.exports = router;