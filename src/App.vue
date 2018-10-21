<template>
  <main>
      <transition name="pagina">
        <router-view>
        </router-view>
      </transition>    
  </main>
</template>

<script>
import { routes } from "./routes";
export default {
  data() {
    return {
      routes
    };
  }
};
</script>

<style>
</style>
