<template>
    <div class="container">
        <h3 class="display-4">Perguntas</h3>
        <hr>

        <div class="card mt-3" v-for="(pergunta, indice) in perguntas" :key="indice">
            <div class="card-header">
                {{ pergunta.titulo }}
                
            </div>
            <div class="card-body">
                {{ pergunta.descricao }}
                                
            </div>
            <div class="card-footer">
                <button class="btn btn-dark">Responder</button>
            </div>
        </div>
        <hr>
    </div>
</template>

<script>
import axios from 'axios';
export default {
    name: 'BodyPage',
    data: () => ({
        perguntas: []
    }),
    created() {
        axios({
            method: "get",
            url: "http://localhost:3000/pergunta",
        }).then((response) => {
            this.perguntas = response.data;
        });
    }
}
</script>
