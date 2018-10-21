<?php
	
	$resp = isset($_POST['resp'])?$_POST['resp']:null;

	function pontuacao($resp){
		if ($resp = true) {
			require '../db/db.php';
			$db = new Db();
			$link = $db->conexao();

		}
		
	}

	rep();
?>