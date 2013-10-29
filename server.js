var http_module = require('http')

var server = http_module.createServer();
var requestHandler = function(request, result) {
  result.writeHead(200, {});
  result.end('Hello World!');
};
server.on('request', requestHandler); 
server.listen(9001);
