const router = require('express').Router();

const userservices = require('../services/user')

router.post('/create-user', userservices.create_user);
router.post('/user-quiz-detail', userservices.user_quiz_details );
// router.get('/:employee_id', employeeservices.get_particular_employee);

module.exports = router;

