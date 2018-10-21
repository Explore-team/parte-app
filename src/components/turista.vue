<template>
    <section class="frm_login">        
        <slot></slot>
         
        <div>
            <div class="txt_img" :class="login.valid ? '' : 'input-error'">
                    <i class="fas fa-user"></i>
                    <input v-model="login.value" placeholder="Login" type="text">
            </div>            
            <div class="txt_img" :class="nome.valid ? '' : 'input-error'">  
                <span></span>              
                <input v-model="nome.value" placeholder="Nome" type="text">
            </div>
            <div class="txt_img" :class="email.valid ? '' : 'input-error'">
               <i class="fas fa-envelope"></i>
                <input v-model="email.value" placeholder="E-mail" type="email">
            </div>
            <div class="legenda">Data de Nascimento</div>
            <div class="txt_img" :class="email.valid ? '' : 'input-error'">
               <i class="far fa-calendar-alt"></i>
                <input v-model="email.value" type="Date">
            </div>
             <div class="txt_img" :class="senha.valid ? '' : 'input-error'">
                <i class="fas fa-key"></i>
                <input  v-model="senha.value" placeholder="Senha" type="password">
            </div>
            <div class="txt_img" :class="confsenha.valid ? '' : 'input-error'">
                <i class="fas fa-key"></i>
                <input  v-model="confsenha.value" placeholder="Confirme sua senha" type="password">
            </div>
            <input @click="cadastroUsuario" class="btn" type="submit" value="Cadastra-se">   
            <p class="mensage">Já é um explorador ? <router-link class="link" to="/login">Entre aqui</router-link></p>         
        </div>
    </section>
</template>

<script>
export default {
      
  data () {
        return {
            login:{valid:true, value:''},
            senha:{valid:true, value: ''},
            confsenha:{valid:true, value: ''},
            email:{valid:true, value: ''},
            nome:{valid:true, value: ''},
        }    
    },
    methods:{
        cadastroUsuario(){ 
            this.login.value == '' ? this.login.valid = false : this.login.valid = true;
            this.senha.value == '' ? this.senha.valid = false : this.senha.valid = true;
            this.nome.value == '' ? this.nome.valid = false : this.nome.valid = true;
            this.email.value == '' ? this.email.valid = false : this.email.valid = true;
            this.confsenha.value == '' ? this.confsenha.valid = false : this.confsenha.valid = true;
            this.senha.value == this.confsenha.value ? this.confsenha.valid = true : this.confsenha.valid = false;
           
            if(this.login.valid && this.senha.valid && this.email.valid && this.confsenha.valid && this.nome.valid){
            
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
    .legenda{
        width: 300px;
        margin: 10px auto;
        font-size: 12px;
        color: #69a4f9;        
        text-align: left;
    }
    input[type=text],input[type=password],input[type=email], input[type=date], select{
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
