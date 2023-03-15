<template>
  <div class="container">
    <body-page/>
  </div>
</template>

<script>
// @ is an alias to /src
import BodyPage from '@/components/BodyPage.vue'

export default {
  name: 'HomeView',
  components: {
    BodyPage
  }
}
</script>
