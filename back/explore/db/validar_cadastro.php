<pre>
<?php
require 'db.php';
$db = new Db();
$link = $db->conexao();

# ========== CADASTRO ==========
$nick = isset($_POST['nick'])?$_POST['nick']:null;
$nome = isset($_POST['nome'])?$_POST['nome']:null;
$senha = isset($_POST['senha'])?$_POST['senha']:null;
$dia = isset($_POST['dia'])?$_POST['dia']:null;
$mes = isset($_POST['mes'])?$_POST['mes']:null;
$ano = isset($_POST['ano'])?$_POST['ano']:null;
$nascimento = $ano."-".$mes."-".$dia;
$email = isset($_POST['email'])?$_POST['email']:null;
$escolaridade = isset($_POST['escolaridade'])?$_POST['escolaridade']:null;
$escola = isset($_POST['escola'])?$_POST['escola']:null;
$estudante = isset($_POST['estudante'])?$_POST['estudante']:null;

//$dados = array($nick, $nome, $senha, $dia, $mes, $ano, $email, $escolaridade, $escola, $estudante);

$sql = "INSERT INTO `usuario` (`cd_usuario_login`, `nm_usuario`, `cd_senha_usuario`, `dt_nascimento_usuario`, `cd_email_usuario`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `qt_moeda_usuario`) VALUES ('$nick', '$nome', '$senha', '$nascimento', '$email', '$escolaridade', '$escola', '$estudante', '1')";



//var_dump($dados);

if (mysqli_query($link, $sql)) {
	echo "sucesso";
}else{
	echo "Fracasso";
}

?>
</pre>