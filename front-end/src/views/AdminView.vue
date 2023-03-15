<template>
    <div class="container">
        <h3 class="display-4">Perguntas</h3>
        <hr />
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Título</th>
                    <th scope="col">Descrição</th>
                    <th scope="col">Ações</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="(pergunta, indice) in perguntas" :key="indice">
                    <td>{{ pergunta.id }}</td>
                    <td>{{ pergunta.titulo }}</td>
                    <td>{{ pergunta.descricao }}</td>
                    <td>
                        <button class="btn btn-success me-3">Editar</button>
                        <button class="btn btn-danger" @click="excluirPergunta(pergunta.id)">
                            Excluir
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
import axios from "axios";
import router from "@/router";
export default {
    name: "AdminView",
    data: () => ({
        perguntas: [],
    }),
    methods: {
        async excluirPergunta(id) {
            const response = await axios
                .delete(`http://localhost:3000/pergunta/${id}`)
            if (response) {
                alert('Pergunta excluída com sucesso!')
                router.go("/admin")
            }
        },
    },
    created() {
        axios({
            method: "get",
            url: "http://localhost:3000/pergunta",
        }).then((response) => {
            this.perguntas = response.data;
        });
    },
};
</script>
