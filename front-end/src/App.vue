<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <router-link to="/" class="nav-link">Home</router-link>
        </li>
        <li class="nav-item">
          <router-link to="/pergunta" class="nav-link">Pergunta</router-link>
        </li>
        <li class="nav-item">
          <router-link to="/admin" class="nav-link">Admin</router-link>
        </li>
      </ul>
  </div>
  </nav>
  <router-view/>
</template>
