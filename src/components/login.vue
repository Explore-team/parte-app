<template>
    <section class="frm_login">
        <figure class="logo">
            <img src="../assets/img/logo.png" alt="LogoTipo">
        </figure>
        <div>
            <div class="txt_img" :class="login.valid ? '' : 'input-error'">
                    <i class="fas fa-user"></i>
                    <input name="txt_login" v-model="login.value" placeholder="Login..." type="text">
            </div>
            <div class="txt_img" :class="senha.valid ? '' : 'input-error'">
                <i class="fas fa-key"></i>
                <input name="txt_senha" v-model="senha.value" placeholder="Senha..." type="password">
            </div>
            <input @click="loginUsuario" class="btn" type="submit" value="Entrar">
            <p class="mensage">Ainda não é um explorador ? <router-link class="link" to="/cadastro">Cadastra-se aqui</router-link></p>
        </div>
        
        
    </section>
</template>

<script>
export default {
      
  data () {
        return {
            login:{valid:true, value:''},
            senha:{valid:true, value: ''},
        }    
    },
    methods:{
        loginUsuario(){ 
            this.login.value == '' ? this.login.valid = false : this.login.valid = true;
            this.senha.value == '' ? this.senha.valid = false : this.senha.valid = true;
            if(this.login.valid && this.senha.valid){
                let dados = new FormData();
                dados.append("email", this.login.value);
                dados.append("senha", this.senha.value);
                fetch( "http://localhost/explore/db/validar_login.php", dados)
                .then(response => console.log(response))
                .catch();
            }
        }        
  }
}

// @click.native coloca um evento em uma tag customizada
// @ = v-on
// $emit() dispara um evento 
</script>


<style  scoped>
/*$cinza:#444444;
$padrao: #69a4f9;
$branco:white;*/
   
    .frm_login{
        font-family: 'Oswald', sans-serif;
        max-width: 500px;
        margin: auto;
        text-align: center;
        display: grid;
        min-height: 100vh;
        background-color: white;
        align-items: center;
    }
    figure{
        margin: 0;
    }

    .txt_img{
        transition: 0.4s all;
        margin: 10px auto;
        display: grid;
        grid:auto/ 20px auto;
        grid-gap: 5px;
        width: 300px;
        padding: 10px;
        box-sizing: border-box;
        box-shadow: 0 0 4px rgba(68, 68, 68, 0.404);
        border-radius: 20px;
        color:#444444;
        border:1px solid transparent;
    }
    input[type=text],input[type=password]{
        border:none;
        outline:none;
        color: #444444;
        background-color: transparent;
    }
    .input-error{
        border-color: rgba(254, 93, 112, 0.527);
    }
    .btn{
        width:300px;
        box-sizing: border-box;
        padding: 10px;
        background-color:#69a4f9;
        color:white;
        border:1px solid transparent;
        border-radius: 20px;
        cursor: pointer;
        margin: 10px auto;
        font-size: 16px;
        font-weight: bold;
        transition: 0.4s all;
    }
    .btn:hover{
        background-color: transparent;
        border-color: #69a4f9;
        color: #69a4f9;
    }
    .mensage{
        font-size:14px;
        color:#444444;

   }
   .mensage a{
       color:#69a4f9;
   }
</style>
