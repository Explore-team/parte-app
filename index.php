<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
		require 'questoes/questoes.php';
		$p = 'Qual o alimento saudável?';
		$qa = 'bala';
		$qb = 'chiclete';
		$qc = 'pirulito';
		$qd = 'maçã';

		//$t = new Questoes();
		//echo $t->gerador();
	?>

	<div class="row">

	<div class="col-4"></div>


	<div class="col-6 ">
	<form method="post" action="db/validar_login.php" class="container" style="margin-top: 100px; float: right;">

	  <div class="form-group row ">
	    <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control-plaintext " name="email" id="staticEmail" placeholder="email@examplo.com">
	    </div>
	  </div>
	  <div class="form-group row">
	    <label for="inputPassword" class="col-sm-2 col-form-label">Senha</label>
	    <div class="col-sm-5">
	      <input type="password" class="form-control-plaintext" name="senha" id="inputPassword" placeholder="Senha">
	    </div>
	  </div>
	  <div class="form-group row">
	    <div class="col-sm-6">
	      <button class="btn btn-block btn-danger" type="submit">Entrar</button>
	    </div>
	  </div>
	</form>
	</div>

	<div class="col"></div>

</div>
</body>
</html>