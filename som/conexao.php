<?php
	$servidor="localhost";//Endereço do servidor aonde está o meu banco de dados
	
	$usuario="root";//Usuario do MySQL
	
	$senha="";//Senha do MySQL
	
	$banco="projeto_tucuma";//Nome do banco de dados (tem que ser exato)
	
	$conexao= @mysqli_connect($servidor, $usuario, $senha, $banco)//Função para abir uma conexão com o banco de dados
	or die ("Problemas com a conexão do Banco de Dados");//Mensagem de erro caso algum dado acima esteja incorreto.
?>