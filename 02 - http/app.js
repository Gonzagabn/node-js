var http = require("http");

http.createServer(function(request, response){
    response.end('<h1>Boas vindas!</h1>');
}).listen(8181);

console.log('O servidor está rodando');