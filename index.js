var express = require('express');
var app = express();

app.use(express.static(process.cwd()+"/my-dream-app/dist/my-dream-app/"));

const port = 4000

app.get('/', (req, res) => {
   console.log(process.cwd())
   console.log('in the server')
   res.sendFile(process.cwd()+"/my-dream-app/dist/my-dream-app/index.html")
 });

app.listen(port, () => console.log(`Example app listening on port ${port}!`))