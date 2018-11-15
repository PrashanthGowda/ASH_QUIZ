const express = require('express');
const app = express();
const path = require('path');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysqlConnection = require('./server/db-conn');
 
const employeeRouter = require('./server/routes/employee');
const userRouter = require('./server/routes/user');



mysqlConnection.connect();

app.use(cors());

app.use(bodyParser.json({ type: 'application/json' }));
app.use(bodyParser.urlencoded({
    extended: true
}));


app.use('/api/employees', employeeRouter);
app.use('/api/user', userRouter);



app.use(express.static(path.join(__dirname, 'dist/ashrama-quiz')));

app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'dist/ashrama-quiz/index.html'));
  }); 


app.listen(3625, function () {
    console.log('Node app is running on port 3625');
});