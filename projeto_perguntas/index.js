const express = require("express");
const app = express();

app.get("/", (req, res)=> {
res.send("Bem vindo, fera");
});

app.listen(8000, ()=>{
    console.log("App rodando!");
});