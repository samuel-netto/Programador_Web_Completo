const express = require('express');
const cors = require('cors');
const perguntaRoutes = require('./routes/PerguntaRoutes');
const respostaRoutes = require('./routes/RespostaRoutes');

const app = express();

app.use(cors());

app.use(express.json());

app.use('/pergunta', perguntaRoutes);
app.use('/resposta', respostaRoutes);

const port = 3000;

app.get('/', (req, res) => {
    res.send('Testando');
})
app.listen(port, ()=>{
    console.log('Servidor rodando na porta: ' + port);
});