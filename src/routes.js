import login from './components/login.vue';
import cadastro from './components/cadastro.vue';
import home from './components/home.vue';
import perfil from './components/perfil.vue';
import loja from './components/loja.vue';
import pontos from './components/pontos.vue';
import award from './components/award.vue';
import ponto from './components/ponto.vue';
import quiz from './components/quiz.vue';

export const routes = [   
    { path: '/login', component: login, name: "Login"},
    { path: '/cadastro', component: cadastro, name: "Cadastro"},
    { path: '/home', component: home, name: "home"},
    { path: '/perfil', component: perfil, name: "perfil"},
    { path: '/loja', component: loja, name: "loja"},
    { path: '/award', component: award, name: "award"},
    { path: '/pontos', component: pontos, name: "pontos"},
    { path: '/ponto', component: ponto, name: "ponto"},
    { path: '/quiz', component: quiz, name:"Quiz"}
];