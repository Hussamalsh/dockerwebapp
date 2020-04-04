var express = require('express');
var app = express();

const port = 4000


app.get('/', function(req, res){
   res.send("Hello world!");
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`))