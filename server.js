/*Copyright François Lonc 2013

francois_nant@yahoo.fr

The fact that you are presently reading this means that you have had
knowledge of the CeCILL license and that you accept its terms.

This software is a computer program whose purpose is to register an event attendance.

------------------------------------------------------------------------ */

var http_module = require('http')
var url_module = require('url')
var filesystem_module = require('fs')

var displayPage = function(name, result) {
    filesystem_module.readFile('views/' + name + '.html', function(error, data) {
      result.end(data);
  });
};

var server = http_module.createServer();
var requestHandler = function(request, result) {
  console.log('URL: ');
  console.log(request.url);

  //console.log('query: ');
  //console.log(request);

  request.setEncoding('utf8');

  request.on('data', function(data) {
    console.log(data);
  });

  result.writeHead(200, {});
  if(request.url === '/') {
    displayPage('index', result);
  }
  else if(request.url === '/date') {
    displayPage('date', result);
  }
  else if(request.url === '/members') {
    result.end('members');
  }
  else {
    console.log('other: ');
    console.log(request.url);
    result.end('other');
  }
};
server.on('request', requestHandler); 
server.listen(9001);
