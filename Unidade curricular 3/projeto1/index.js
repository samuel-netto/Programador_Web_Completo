//modulos
const express = require('express');
const conection = require('./database/conection')
const bodyParser = require('body-parser');
const perguntaRoutes = require('./routes/PerguntasRoutes')
const respostaRoutes = require('./routes/RespostasRoutes')
const Pergunta = require('./models/pergunta')


const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

try {
  conection.authenticate();
  console.log('Conectado com sucesso ao Banco de dados.');


  conection.sync();

} catch (error) {
  console.error('Houve um erro de conexão com o Banco de dados:', error);
}

/* const perguntas = [
  {
    id: 1,
    titulo: 'O que é node.js',
    descricao: 'Gostaria de saber detalhadamente, o que é Node.js'
  },
  {
    id: 2,
    titulo: 'O que é express.js',
    descricao: 'Gostaria de saber detalhadamente, o que é Express.js'
  },
  {
    id: 3,
    titulo: 'O que é EJS',
    descricao: 'Gostaria de saber detalhadamente, o que é a view engine ejs'
  },
]*/

app.set('view engine', 'ejs')

app.use(express.static('public'))

//Rotas
app.get('/', (req, res) => {
  Pergunta.findAll({
    order: [['id', 'desc']]
  }).then(perguntas => {
      if (perguntas) {
        res.render('index', { perguntas });
      }
      else {
        console.log('Não temos perguntas cadastradas');
      }
    }).catch(err => console.log(err))
});

app.use('/perguntar', perguntaRoutes);
app.use('/responder', respostaRoutes);

app.listen(port, () => {
  console.log(`Servidor rodando na porta: ${port}`)
})