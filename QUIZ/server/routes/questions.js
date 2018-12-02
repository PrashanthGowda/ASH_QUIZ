const router = require('express').Router();

const questionservices = require('../services/questions');

router.get('/:questions', questionservices.get_questions);
router.get('/get_random_questions', questionservices.get_random_questions);
router.get('/load-questions-to-be-asked/:participant', questionservices.get_load_questions_to_be_asked);

module.exports = router;