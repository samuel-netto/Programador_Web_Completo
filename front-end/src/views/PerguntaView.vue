<template>
  <div class="container">
    <h1 class="text-center">Formulário da Pergunta</h1>
    <form>
      <label for="titulo">Título:</label>
      <input class="form-control" type="text" v-model="titulo" required/>
      <br />
      <label for="descricao">Descrição:</label>
      <input class="form-control mb-3" type="text" v-model="descricao" required/>
      <button class="btn btn-dark" @click="salvarPergunta">Salvar</button>
    </form>
  </div>
</template>

<script>
import axios from "axios";
import router from "@/router";
export default {
  name: "PerguntaView",
  data: () => ({
    titulo: "",
    descricao: "",
  }),
  methods: {
    salvarPergunta() {
      if (this.titulo == undefined || this.titulo == "") {
        alert("Informe um titulo válido!");
      } else if (this.descricao == undefined || this.descricao == "") {
        alert("Informe uma descrição válida!");
      } else {
        axios
          .post("http://localhost:3000/pergunta/save", {
            titulo: this.titulo,
            descricao: this.descricao,
          })
          .then(() => {
            router.push("/");
          }).catch(err => {
            console.log(err);
          });
      }
    },
  },
};
</script>
