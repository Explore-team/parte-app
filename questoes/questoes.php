<?php 

class Questoes
{
	
	function gerador(){
		
		for($i=1; $i<=5; $i++){
		$numeros[] = $i;
		}

		shuffle($numeros);

		foreach($numeros as $numero){
		echo "$numero - ";
		}
	}

	function questoes(){

	}
}
?>