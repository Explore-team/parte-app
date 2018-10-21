import Vue from 'vue'// Ele sabe onde encontrar
import App from './App.vue' //Vue instance é a cola entre o componente e a vue
import VueRouter from 'vue-router';
import VueResource from 'vue-resource';
import { routes } from './routes';
import turista from './components/turista';
import estudante from './components/estudante';
import menu from './components/menu.vue';

Vue.use(VueResource);
Vue.use(VueRouter);

Vue.component("menu-app", menu);
Vue.component("registro-turista", turista);
Vue.component("registro-estudante", estudante);

const router = new VueRouter({ routes, mode:'history' });

new Vue({
  el: '#app', // elemento html
  router,
  render: h => h(App) 
})
