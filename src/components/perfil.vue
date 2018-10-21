<template>
    <section class="frm_perfil">
        <figure class="foto">
            <img src="http://marketingdeconteudo.com/wp-content/uploads/2015/11/marketing-pessoal-620x316.png" alt="Logo">
            <h1>Jonatas Freire</h1>
        <h2>Pontuação: 300 pontos</h2>
        </figure>
        
        <section class="conquistas">
            <h1 class="titulo"> <i class="fas fa-trophy"></i>Conquistas</h1>
            <div>
                <article class="conquista">
                    <i class="fas fa-heading"></i>
                    <h1>Conhecendo José Bonificio</h1>
                </article>
                <article class="conquista">
                   <i class="fas fa-binoculars"></i>
                    <h1>O segredo do capitão do Museu</h1>
                </article>
                <article class="conquista">
                    <i class="fas fa-search-location"></i>
                    <h1>O leão de Santos</h1>
                </article>
            </div>
            
            
        </section>
        <menu-app ></menu-app>
    </section>
    
</template>
<script>
    
</script>
<style scoped>
.conquistas >div{
    display: grid;
    grid: auto / 50% 50%;
    width: 100%;
}

    .conquista{
        width: 100%;
        padding: 20px;
        box-sizing: border-box;
        box-shadow: 0 0 5px rgba(40, 40, 40, 0.212);
        text-align: center;
    }
    .conquista i{
        font-size: 30px;
        color: #69a4f9;
    }
    .conquista h1{
        font-size: 15px; 
        color: #444444;
    }
    .foto{
        width: 100%;
        margin: 0;
        text-align: center;
        background-color: #69a4f9;
        border-radius: 0 0 50% 50%;
        padding:40px 90px;
        box-sizing: border-box;
    }.titulo{
        box-sizing: border-box;
        padding-left: 20px;
        margin-top: 0px;
        font-size: 15px;
        color: #69a4f9;
        border-bottom: 1px solid rgba(40, 40, 40, 0.096);
        padding-bottom: 10px;
    }
    .titulo i{
        margin-right: 10px;
    }
    .foto h1{
        font-size:16px;
        color: white;
        font-weight: normal;
    }
    .foto h2{
        font-size:14px;
        color: white;
        font-weight: normal;
    }
    .foto img{
        width: 150px;
        height: 150px;
        object-fit: cover;
        object-position: center;
        border-radius: 50%;
        margin: auto;
        border: 4px solid white;
    }
    .frm_perfil{
        max-width: 500px;
        margin: auto;
        font-family: 'Oswald', sans-serif;
    }
</style>
