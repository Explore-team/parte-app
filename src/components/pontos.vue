<template>
    <div class="cards">
        <div class="card" style="background-image:url('http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg')">
            <div>
                <h1>Catedral do Centro de Santos</h1>
                <p>Lorem ipsum is dolor ejiejiijfkjsfdkjsdklsfjdklsadfjkjkldfdjkls</p>
            </div>            
        </div>
        <div class="card" style="background-image:url('http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg')">
            <div>
                <h1>Catedral do Centro de Santos</h1>
                <p>Lorem ipsum is dolor ejiejiijfkjsfdkjsdklsfjdklsadfjkjkldfdjkls</p>
            </div>            
        </div>
        <router-link to="/ponto?page=k"><div class="card" style="background-image:url('http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg')">
            <div>
                <h1>Catedral do Centro de Santos</h1>
                <p>Lorem ipsum is dolor ejiejiijfkjsfdkjsdklsfjdklsadfjkjkldfdjkls</p>
            </div>            
        </div></router-link>
        <div class="card" style="background-image:url('http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg')">
            <div>
                <h1>Catedral do Centro de Santos</h1>
                <p>Lorem ipsum is dolor ejiejiijfkjsfdkjsdklsfjdklsadfjkjkldfdjkls</p>
            </div>            
        </div>
        <div class="card" style="background-image:url('http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg')">
            <div>
                <h1>Catedral do Centro de Santos</h1>
                <p>Lorem ipsum is dolor ejiejiijfkjsfdkjsdklsfjdklsadfjkjkldfdjkls</p>
            </div>            
        </div>
        <div class="card" style="background-image:url('http://s2.glbimg.com/1OYYZu3tqdWkdxE0WB321sVRdhU=/s.glbimg.com/jo/g1/f/original/2013/12/27/igreja.jpg')">
            <div>
                <h1>Catedral do Centro de Santos</h1>
                <p>Lorem ipsum is dolor ejiejiijfkjsfdkjsdklsfjdklsadfjkjkldfdjkls</p>
            </div>            
        </div>
        <menu-app></menu-app>
    </div>
    
</template>
<script>
    
</script>
<style scoped>
    .cards{
        max-width: 500px;   
        margin: auto;
        font-family: "Oswald", sans-serif;
    }
    .card{
        width: calc(100% - 20px);
        border-radius: 10px;
        background-size: cover;
        color: white;
        margin:10px auto;
    }
    .card div{
        padding: 15px;
        background-color: rgba(40,40,40,0.6);
        box-sizing: border-box;
        border-radius: 10px;
        cursor: pointer;
        color: white;
        transition: 0.4s all;
    }
    .card div:hover{
        background-color: rgba(40,40,40,0.8);
    }
    .card h1{
        font-size: 16px;
        font-weight: normal;
    }
    .card p{
        font-size: 12px;
        
    }

</style>
