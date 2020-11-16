var mongoose = require('mongoose');
var express = require('express');
var app = express();

// Connect to mongodb
var mongoURI = 'mongodb://database/my-db';
mongoose.connect(mongoURI, function(err){
	if (err)
		console.log('db connection err');

	console.log('mongodb: connected');
});

const port = 4000

app.get('/', (req, res) => {
   console.log('in the server')
   res.send("mongoose status = "+mongoose.STATES[mongoose.connection.readyState])
 });
 
app.listen(port, () => console.log(`Example app listening on port ${port}!`))