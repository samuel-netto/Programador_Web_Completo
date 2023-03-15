const express = require('express')
const app = express()
const port = 3000

const perguntas = [
  {
    id: 1,
    titulo: 'O que é node.js',
    descricao: 'Gostaria de saber detalhadamente, o que é Node.js'
  },
  {
    id: 2,
    titulo: 'O que é express.js',
    descricao: 'Gostaria de saer detalhadamente, o que é express.js'
  },
  {
    id: 3,
    titulo: 'O que é ejs',
    descricao: 'Gostaria de saer detalhadamente, o que é ejs'
  }
] 

app.set('view engine', 'ejs')

app.use(express.static('public'))

app.get('/', (req, res) => {
  res.render('index', {perguntas})
})

app.get('/perguntar', (req, res) => {
    res.render('perguntar')
})

app.get('/resposta', (req, res) => {
    res.render('resposta')
})

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`)
})
