<?php 
	class Db{
	
	private $host = 'localhost';
	private $usuario = 'root';
	private $senha = '';
	private $banco = 'explore';

	function conexao(){
		$conexao = mysqli_connect($this->host, $this->usuario, $this->senha, $this->banco);
		if (mysqli_connect_errno()) {
			echo "Erro de conexão ".mysqli_connect_errno();
		}

		return $conexao;
	}
}
?>