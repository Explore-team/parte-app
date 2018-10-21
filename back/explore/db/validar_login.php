<pre>
<?php 

session_start();

require 'db.php';

$email = isset($_POST['email'])?$_POST['email']:null;
$senha = isset($_POST['senha'])?md5($_POST['senha']):null;

echo $email;
echo $senha;

$db = new Db();
$link = $db->conexao();

$sql = "INSERT INTO `usuario` (`cd_usuario_login`, `nm_usuario`, `cd_senha_usuario`, `dt_nascimento_usuario`, `cd_email_usuario`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `qt_moeda_usuario`) VALUES ('13', 'pedro', '202cb962ac59075b964b07152d234b70', '2018-10-01', 'pedro@teste.com', '11', '11', '11', '1')";



	if (mysqli_query($link, $sql)) {
		echo "<h1>Sucesso</h1>";
	}else{
		echo "<h1>Fracasso</h1>";
	}

die();
$sql = "SELECT * FROM usuario WHERE cd_email_usuario = '$email' AND cd_senha_usuario = '$senha' ";

$pesquisa = mysqli_query($link, $sql);
var_dump($pesquisa);

if ($pesquisa) {
	$col_array;
	while ($row = $pesquisa->fetch_object()) {
		
		foreach ($row as $key => $col) {
			$col_array[$key] = utf8_encode($col);
		}

		$row_array[] = $col_array;
		echo "<h1>Entrou</h1>";
	}
	echo json_encode($row_array);
	
} else {
	echo "<h3>Erro de consulta</h3>";
}

?>
</pre>