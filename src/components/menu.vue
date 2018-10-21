<template>
    <footer>
        <nav class="menu">
            <ul>                
                 <li :class="links[1].ativado ? 'ativar': ''"><router-link to="/perfil"><i class="fas fa-user-circle"></i></router-link></li>
                <li :class="links[2].ativado ? 'ativar': ''"><router-link to="/home"><i class="fas fa-home"></i></router-link></li>
                <li :class="links[3].ativado ? 'ativar': ''"><router-link to="/pontos"><i class="fas fa-map"></i></router-link></li>
                <li :class="links[4].ativado ? 'ativar': ''"><router-link to="/award" ><i class="fas fa-award"></i></router-link></li>
            </ul>            
        </nav>
    </footer>

</template>
<script>
export default{    
    data(){
        return{

            links:[{
                to: "/loja",
                ativado: false,
            },
            {
                to: "/perfil",
                ativado: false,
            },
            {
                to: "/home",
                ativado: false,
            },
            {
                to: "/pontos",
                ativado: false,
            },
            {
                to: "/award",
                ativado: false,
            }]
        }
    },    
}
</script>
<style scoped>
    .ativar{
        color: #69a4f9!important;
    }
    footer{
        width: 100%;
        margin: auto;
        position: fixed;
        bottom:0;
        box-shadow: -1px 0 4px rgba(50, 50, 50, 0.363);
        padding: 10px;
        background-color: white;
    }
    .menu{
        max-width: 500px;
        margin: auto;
    }
    .menu ul{        
        list-style: none;
        padding: 0;
        margin: 0;
        text-align: center;
    }
    .menu ul li{
        font-size: 25px;
        margin: 10px;
        color: #444444;
        display: inline;
        cursor: pointer;
    }
    a{
        color: #444444;
    }
    a:hover{
         color: #69a4f9;
    }
</style>
