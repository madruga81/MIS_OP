<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Pagina Principal</title>
<link href="./CSS/index_pagina.css" rel="stylesheet" type="text/css" />
</head>
<body id="corpo">
	<div id="formato">
		<form action="planejamento" method="post">
			<label id="leb"><strong>E-mail:</strong>
			</label> <input type="text" name="email" id="username" value="" /> <label
				id="leb"><strong>Senha:</strong>
			</label> <input type="password" name="senha" id="password" value="" /> <input
				type="hidden" name="logica" value="LoginLogout" /> <input
				name="entrar" type="submit" id="buttons" value="Entrar" />
		</form>
	</div>
	<div id="logo">
		<img src="./IMG/Planejamento.gif" />
	</div>
	<div id="cadastre_se">
		<a href="cadastro.jsp">Cadastre-se!</a>
	</div>

	<div id="corpo_meio">
		<img src="./IMG/emp.gif" />
	</div>
</body>
</html>