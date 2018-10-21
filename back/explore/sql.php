<?php

#alternativa_ponto_turistico
INSERT INTO INSERT INTO `alternativa_ponto_turistico` (`cd_alternativa_ponto_turistico`, `nm_alternativa_ponto_turistico`, `ic_alternativa_correta`, `cd_questao_ponto_turistico`, `cd_ponto_turistico`, `cd_escolaridade`) VALUES ('10', 'qwertyuiop', '1', '11', '11', '11');

#conquista
INSERT INTO `conquista` (`cd_conquista`, `nm_conquista`, `qt_pontos_conquista`, `qt_moedas_conquista`) VALUES ('11', 'master', '10', '10');

#escola
INSERT INTO `escola` (`cd_escola`, `nm_escola`, `qt_pontos`) VALUES ('11', 'Escolinha do Barulho', '10');

#escolaridade
INSERT INTO `escolaridade` (`cd_escolaridade`, `nm_escolaridade`) VALUES ('11', 'medio');

#ponto_turistico
INSERT INTO `ponto_turistico` (`cd_ponto_turistico`, `nm_ponto_turistico`, `ds_ponto_turistico`, `ds_linha_fina_ponto_turistico`) VALUES ('11', 'Narnia', 'qwertyui asdfghjklç zxcvbnm, lkjhgfds poiuytrew annd ewhfygfhioas ehfuaojffdap hfioakofdahfao hfueiajdiaihfua aeifhaeoiefheuaw eaohefua ', 'cvbnm dfghjk rtyuio rtyuio fghjkl cvbnm ');

#produto_loja
INSERT INTO `produto_loja` (`cd_produto_loja`, `nm_produto_loja`, `vl_produto_loja`) VALUES ('11', 'Luva', '1');

#questao_ponto_turistico
INSERT INTO `questao_ponto_turistico` (`cd_questao_ponto_turistico`, `nm_questao_ponto_turistico`, `cd_ponto_turistico`, `cd_escolaridade`, `qt_pontos_questao`) VALUES ('11', 'Questão x', '11', '11', '10');

#resposta_usuario
INSERT INTO `resposta_usuario` (`cd_resposta_usuario`, `cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_alternativa_ponto_turistico`, `cd_questao_ponto_turistico`, `cd_ponto_turistico`) VALUES ('11', '123', '10', '10', '10', '10', '10');

#tipo_usuario
INSERT INTO `tipo_usuario` (`cd_tipo_usuario`, `nm_tipo_usuario`) VALUES ('11', 'medio');

#usuario
INSERT INTO `usuario` (`cd_usuario_login`, `nm_usuario`, `cd_senha_usuario`, `dt_nascimento_usuario`, `cd_email_usuario`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `qt_moeda_usuario`) VALUES ('will', 'will', '202cb962ac59075b964b07152d234b70', '2018-10-01', 'will@teste.com', '10', '10', '10', '20');

#usuario TESTAR!!!
INSERT INTO `usuario_conquista` (`cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `cd_conquista`) VALUES ('123', '10', '10', '10', '11');

#usuario_ponto_turistico TESTAR!!!
INSERT INTO `usuario_ponto_turistico` (`cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `cd_ponto_turistico`) VALUES ('will', '10', '10', '10', '11');

#usuario_produto TESTAR!!!
INSERT INTO `usuario_produto` (`cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `cd_produto_loja`, `ic_ativado`) VALUES ('123', '10', '10', '10', '11', '1');

?>