const express = require('express');
const bodyParser = require('body-parser');
const dado = require('./models/Dado');
const Dado = require('./models/Dado');

const app = express();
const port = 3030;

app.set('view engine', 'ejs');
app.use(express.static('public'));

const dados = [
  {
    nome: "1/2 SALADA TROPICAL",
    descricao:
      "Alface, rucula, manga, uva, abacaxi, tomate cereja, mussarela, azeitona e creme de frango",
    preco: 18,
    img: "https://www.anamariabrogui.com.br/assets/uploads/receitas/fotos/usuario-3453-871ff3a4e3844b0fe17f8bc6e192b71b.jpg",
  },
  {
    nome: "LEGUMES",
    descricao:
      "Brócolis, couve flor, cenoura, vagem, milho, ervilha, palmito e tomate cereja",
    preco: 21,
    img: "https://img.freepik.com/fotos-premium/prato-de-legumes-salteados-na-mesa-de-madeira_45583-1698.jpg",
  },
  {
    nome: "PALMITO",
    descricao: "",
    preco: 8,
    img: "https://www.cervejapetra.com.br/wp-content/uploads/2019/06/palmito-945x486.jpg",
  },
  {
    nome: "CUPIM",
    descricao: "Acompanha arroz, mandioca e vinagrete",
    preco: 90,
    img: "https://wordbrasil.files.wordpress.com/2012/10/img_9123-1280x853.jpg",
  },
];

app.get('/', (req, res) => {
   let pages = total.count;
  
  Dado.findAll({
    limit: 3,
    order: [['id', 'desc']],
  }).then((dados) => {
  res.render('index', { dados, current: 1, pages });
  });
});

app.get('/cardapio', (req, res) => {
  res.render('cardapio')
})

app.get('/sobre', (req, res) => {
  res.render('sobre')
})

app.get('/contato', (req, res) => {
  res.render('contato')
})


app.listen(port, () => {
    console.log(`Servidor rodando na porta: ${port}`)
  })
