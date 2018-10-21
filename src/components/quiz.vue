<template>
    <div class="quiz">
        <div class="progress">
            <div></div>
        </div>
        <h1 class="titulo">Quem foi pedro silva willams ?</h1>
        
        <div @click="saveQuestion" class="questao">
            Um cara qualquer
        </div>
        
        <div @click="saveQuestion" data-name="" class="questao">
            Um comunista
        </div>
        
        <div data-name="" @click="saveQuestion" class="questao">
            Um marketeiro
        </div>
        
        <div data-name="" @click="saveQuestion" class="questao">
            Um nazita
        </div>



        <menu-app></menu-app>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                selectQuest:'',
                nextQuest: [{
                    question: false,
                    response: '',

                },
                {
                    question: false,
                    response: '',
                },
                {
                    question: false,
                    response: '',
                }]
            }
        },
        methods:{
            saveQuestion: function(){

            }
        },
        created: () =>{
            let time = 0;
            setInterval(function(){

                $(".progress").find("div").css("width", time + "%" );
                if(time < 100){
                    time += 5;
                }
                
            },300)
        }
    }
</script>
<style scoped>
    *{
        font-family: 'Oswald', sans-serif;
    }
    .quiz{
        max-width: 500px;
        margin: auto;
    }
    .progress{
        transition: 0.4s all;
        box-sizing: border-box;
        width: 90%;
        background-color:#44444448;
        border-radius: 20px;
        height: 4px;
        margin: 10px auto;
    }
    .questao{
        width:90%;
        box-sizing: border-box;
        padding: 10px;
        font-size: 12px;
        color: #444444;
        box-shadow: 0px 0px 4px rgba(30,30,30,0.4);
        border-radius: 15px;
        margin: 10px auto;
        cursor: pointer;
        transition: 0.4s all;
    }
    .questao:hover{
        background-color: #69a4f9;
        color: white;
    }
    .progress div{
        width: 2%;
        height: 4px;
        background-color:#69a4f9;
        transition: 0.4s all;
    }
    .titulo{
        color:#69a4f9;
        margin: 10px auto;
        font-size: 17px;
        text-align: center;
    }
   
</style>