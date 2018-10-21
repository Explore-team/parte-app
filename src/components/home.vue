<template>
<div>
    <div class="zone">        
    <input type="file" id="scan_flp" accept="image/*" capture="camera">
     <label for="scan_flp">
          <figure class="logo">
            <img src="../assets/img/logo.png" alt="LogoTipo">
        </figure>
         <h1>Faça a leitura do QR Code para saber mais sobre este local!</h1>
         <div class="scan">

         </div>
     </label>
     <menu-app ></menu-app>
    </div>
     
</div>
    
</template>
<script>
    
</script>
<style scoped>
figure{
        margin: 0;
        text-align: center;
    }

input[type=file]{
    display: none;
}
    .zone h1{
        font-size: 15px;
        color: #69a4f9;
        padding: 20px;
        box-sizing: border-box;
    }
    .scan{
        width: 300px; 
        height: 300px;
        border: 1px solid #69a4f9;
        margin: auto;
    }
    .zone{
        min-height: 100vh;
        display: grid;
        align-items: center;
        text-align: center;
        font-family: 'Oswald', sans-serif;
    }
</style>
