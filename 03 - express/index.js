const express = require("express"); // Importando o express
const app = express(); // Iniciano o express

//Criando uma rota
app.get("/", function(req, res){
    // Assim que a resposta for enviada a conexão é fechada com o cliente
    res.send("Bem vindo à Homepage");
});

//Criando uma rota
app.get("/blog", function(req, res){
    res.send("Bem vindo ao Blog");
});

// Parametros obrigatórios
app.get("/rota/:name", function(req, res){
    res.send(req.params.name);
});

app.get("/rota2/:empresa", function(req, res){
    var empresa = req.params.empresa;
    res.send('Aqui o nome da sua empresa: ' + empresa);
});

// Parametros não obrigatórios
app.get("/rota3/:artigo?", function(req, res){
    var artigo = req.params.artigo;

    if (artigo){
         res.send('Aqui o nome da sua artigo: ' + artigo);
    } else {
        res.send('Você não falou o seu artigo');
    }
});

// QueryParams
app.get("/rota4/youtube?", function(req, res){
// O usuário passa o parametro que quiser:
// localhost:8080/rota4/youtube?channel=dev-ser
    var channel = req.query['channel'];
    if (channel){
         res.send('Aqui o nome do seu canal: ' + channel);
    } else {
        res.send('Você não falou o seu canal');
    }
});

app.listen(8080,
    function(erro){
if(erro){
    console.log("Ocorreu um erro!");
} else {
    console.log("Servidor iniciado com sucesso!");
}
})