<template>
    <section class="frm_login">        
       
        <registro-estudante v-if="estudante">
            <div class="voltar" @click="trocar('')"><i class="fas fa-chevron-left"></i> Voltar</div>
        </registro-estudante>
        <registro-turista v-else-if="turista">
             <div class="voltar" @click="trocar('')"><i class="fas fa-chevron-left"></i> Voltar</div>
        </registro-turista>
         <div v-else>
             <div class="voltar"><router-link to="/login"><i class="fas fa-chevron-left"></i> Voltar </router-link></div>
         <figure class="logo">
            <img src="../assets/img/logo.png" alt="LogoTipo">
        </figure>
        <div>
        <h1 class="titulo">Você é um ..</h1>
        <div class="two-col">
            <div @click="trocar('t')" class="btn-select">
                <i class="fas fa-camera"></i>
                <h1>Turista</h1>
            </div>
            <div class="btn-select" @click="trocar('e')">
                <i class="fas fa-book"></i>
                <h1>Estudante</h1>
            </div>
        </div>
        </div>
        </div>
    </section>
</template>

<script>
export default {
  data() {
    return {
      login: { valid: true, value: "" },
      senha: { valid: true, value: "" },
      confsenha: { valid: true, value: "" },
      email: { valid: true, value: "" },
      nome: { valid: true, value: "" },
      turista: false,
      estudante: false
    };
  },
  methods: {
    cadastroUsuario() {
      this.login.value == ""
        ? (this.login.valid = false)
        : (this.login.valid = true);
      this.senha.value == ""
        ? (this.senha.valid = false)
        : (this.senha.valid = true);
      this.nome.value == ""
        ? (this.nome.valid = false)
        : (this.nome.valid = true);
      this.email.value == ""
        ? (this.email.valid = false)
        : (this.email.valid = true);
      this.confsenha.value == ""
        ? (this.confsenha.valid = false)
        : (this.confsenha.valid = true);
      this.senha.value == this.confsenha.value
        ? (this.confsenha.valid = true)
        : (this.confsenha.valid = false);

      if (
        this.login.valid &&
        this.senha.valid &&
        this.email.valid &&
        this.confsenha.valid &&
        this.nome.valid
      ) {
      }
    },
    trocar(el) {
      if (el == "t") {
        this.turista = true;
        this.estudante = false;
      } else {
        if (el == "e") {
          this.estudante = true;
          this.turista = false;
        }
        else{
            this.estudante = false;
            this.turista = false;
        }
      }
    }
  }
};

// @click.native coloca um evento em uma tag customizada
// @ = v-on
// $emit() dispara um evento
</script>


<style  scoped>
/*$cinza:#444444;
$padrao: #69a4f9;
$branco:white;*/
.voltar{
    position: absolute;
    top: 20px;
    left: 10px;
    text-align: left;
    transition: 0.4s all;
    cursor: pointer;
}
.voltar a{
    text-decoration: none;
    color: #444444;
}
.voltar:hover{
    color:#69a4f9;
}
.two-col {
  display: grid;
  align-items: center;
  grid: auto/ 50% 50%;
  text-align: center;
}
.titulo {
  font-size: 16px;
  color: #69a4f9;
  text-align: center;
}
.btn-select {
  width: 150px;
  height: 150px;
  display: grid;
  align-items: center;
  box-shadow: 0 0 4px rgba(68, 68, 68, 0.61);
  margin: 10px auto;
  border-radius: 15px;
  box-sizing: border-box;
  padding: 20px;
  font-size: 40px;
  color: #69a4f9;
  cursor: pointer;
  transition: 0.4s all;
}
.btn-select:hover {
  background-color: #69a4f9;
  color: white;
}
.btn-select h1 {
  font-size: 16px;
}

.frm_login {
  font-family: "Oswald", sans-serif;
  max-width: 500px;
  margin: auto;
  text-align: center;
  display: grid;
  min-height: 100vh;
  background-color: white;
  align-items: center;
}
figure {
  margin: 0;
}

.txt_img {
  transition: 0.4s all;
  margin: 10px auto;
  display: grid;
  grid: auto/ 20px auto;
  grid-gap: 5px;
  width: 300px;
  padding: 10px;
  box-sizing: border-box;
  box-shadow: 0 0 4px rgba(68, 68, 68, 0.404);
  border-radius: 20px;
  color: #444444;
  border: 1px solid transparent;
}
.legenda {
  width: 300px;
  margin: 10px auto;
  font-size: 12px;
  color: #69a4f9;
  text-align: left;
}
input[type="text"],
input[type="password"],
input[type="email"],
input[type="date"],
select {
  border: none;
  outline: none;
  color: #444444;
  background-color: transparent;
}
.input-error {
  border-color: rgba(254, 93, 112, 0.527);
}
.btn {
  width: 300px;
  box-sizing: border-box;
  padding: 10px;
  background-color: #69a4f9;
  color: white;
  border: 1px solid transparent;
  border-radius: 20px;
  cursor: pointer;
  margin: 10px auto;
  font-size: 16px;
  font-weight: bold;
  transition: 0.4s all;
}
.btn:hover {
  background-color: transparent;
  border-color: #69a4f9;
  color: #69a4f9;
}
.mensage {
  font-size: 14px;
  color: #444444;
}
.mensage a {
  color: #69a4f9;
}
</style>
