var express_module = require('express')

var application = express_module.createServer();
app.get('/', function(request, result) {
            res.send('hello world');
            });
app.listen(9001);
