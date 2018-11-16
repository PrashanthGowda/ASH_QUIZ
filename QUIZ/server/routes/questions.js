const router = require('express').Router();

const questionservices = require('../services/questions');

router.get('/', questionservices.get_questions);
router.get('/get_random_questions', questionservices.get_random_questions);

module.exports = router;