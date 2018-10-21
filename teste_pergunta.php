<pre>
<?php


session_start();

require 'db/db.php';

$tema = isset($_POST['tema'])?md5($_POST['tema']):null;
//$tema = 'jb';


$db = new Db();
$link = $db->conexao();


$sql = "SELECT * FROM questao_quiz WHERE tema = '$tema' ";


if ($pesquisa = mysqli_query($link, $sql)) {
	$resPesquisa = mysqli_fetch_array($pesquisa, MYSQLI_ASSOC);
	//var_dump($resPesquisa);

	while ($final = mysqli_fetch_assoc($pesquisa)) {
		$row_array = $final;

	}
	
	echo json_encode($row_array);
	
} else {
	echo "<h3>Erro de consulta</h3>";
}

?>
</pre>

