<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="post" action="db/validar_cadastro.php">
		<label>Apelido</label>
		<input type="text" name="nick">
		<br>
		<label>Nome</label>
		<input type="text" name="nome">
		<br>
		<label>Senha</label>
		<input type="password" name="senha">
		<br>
		<!-- nascimento -->
				<label style="color: white; font-size: 18px;" for="nascimento" class="mx-2"><b>Data de Nascimento: </b></label>

				<select name="dia">
					<?php  

						for ($i=1; $i <= 31 ; $i++) { 

							if ($i<10) {
								echo "<option  value='0$i'>0".$i."</option>";
							}else{
								echo "<option  value='$i'>".$i."</option>";
							}
							
							
						}
					?>
				</select>

				<select name="mes">
					<?php  

						for ($i=1; $i <= 12 ; $i++) { 

							if ($i<10) {
								echo "<option  value='0$i'>0".$i."</option>";
							}else{
								echo "<option  value='$i'>".$i."</option>";
							}
							
						}
					?>
				</select>
				
				<select name="ano">
					<?php  
						$ano = date("Y");
						$l = $ano-100;

						for ($i=$ano; $i >= $l ; $i--) { 

							echo "<option  value='$ano'>".$ano."</option>";

							$ano = $ano - 1;
							
						}
					?>
				</select>
				</div>
			</div><!-- /nascimento -->
		<br>

		<label>Email</label>
		<input type="email" name="email">
		<br>

		<label>Escolaridade</label>
		<select name="escolaridade">
			<option>...</option>
			<option value="1">fundamental</option>
			<option value="2">médio</option>
			<option value="3">superior</option>
		</select>
		<br>

		<label>Escola</label>
		<select name="escola">
			<option>...</option>
			<option value="10">Escola A</option>
			<option value="11">Escola B</option>
			<option value="12">Escola C</option>
		</select>
		<br>

		<label>É estudante?</label>
		<select name="estudante">
			<option>...</option>
			<option value="11">sim</option>
			<option value="11">não</option>
		</select>
		<br>

		<button type="submit">Enviar</button>
	</form>
</body>
</html>