const router = require('express').Router();

const stateservices = require('../services/state');

router.get('/get-all-states/:country', stateservices.get_all_states);
module.exports = router;