const express = require('express')
const app = express()
const port = 3030

app.get('/', (req, res) => {
  res.send('Ola mundo!')
})

app.get('/produtos', (req, res) => {
  res.send('Página produtos!')
})

app.get('/produtos/pesquisa', (req, res) => {
  const produtoPesquisa = req.query.busca;
  res.send('O produto pesquisado é: ' + produtoPesquisa)
})

app.get('/produtos:nome/:preco', (req, res) => {
  //use o ? no final do parametro para ele ser opciomal
  const nome = req.params.nome;
  const preco = req.params.preco;
  if (preco != undefined) {
    res.send('O nome do produto é ' + nome + ', seu preço é:' + preco);
  }
  res.send('O nome do Produto é: ' + nome)
})

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`)
})
