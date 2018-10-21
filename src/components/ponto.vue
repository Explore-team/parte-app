<template>
    <div class="pg_ponto">
        <figure class="img">
            <img src="http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg" alt="">
        </figure>
        <h1>Catedral</h1>
        <article>
            <p>fdfjkdskjdjifdjkfgjiflfkgklgdjkfjkggklgfkjgfklgfljkgljgfjlkgdfkfdjkgflgfj</p>
        </article>
        <input type="button" class="btn" value="Quiz">
        <menu-app></menu-app>
    </div>
    
</template>
<style scoped>
    .pg_ponto{
        text-align: center;
        max-width:500px;
        margin:auto;
        font-family: 'Oswald', sans-serif;
    }
    .img{
        margin: 0;
        width: 100%;
       
    }
    .img img{
        width:100%;
         border-radius: 0 0 50% 50%;
    }
    article{
        padding: 10px;
        box-sizing: border-box;
    }
    h1{
        font-size: 18px;
        color: #69a4f9;
        text-align: center;
    }
    p{
        text-align: left;
        font-size: 12px;
        color:#444444;
    }
    .btn{
        width:280px;
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
</style>
<script>
export default {
    data(){
        return{
            page: this.$route.query.page
        }
    }
}
</script>

