const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');
const cors = require('cors');
const morgan  = require('morgan')
const mysqlConnection = require('./server/db-conn');
 
const employeeRouter = require('./server/routes/employee');
const userRouter = require('./server/routes/user');
const questionsRouter = require('./server/routes/questions');
const sample = require('./server/routes/sample');



mysqlConnection.connect();

app.use(cors());

app.use(bodyParser.json({ type: 'application/json' }));
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(morgan('combined'));

app.use('/api', sample);
app.use('/api/employees', employeeRouter);
app.use('/api/user', userRouter);
app.use('/api/questions', questionsRouter);



app.use(express.static(path.join(__dirname, 'dist/ashrama-quiz')));

app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'dist/ashrama-quiz/index.html'));
  }); 


app.listen(8080, function () {
    console.log('Node app is running on port 8080');
});