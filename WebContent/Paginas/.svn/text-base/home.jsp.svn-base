<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" session="true" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Pagina Home</title>
<link href="./CSS/home_pagina2.css" rel="stylesheet" type="text/css" />
<link href="./CSS/Sub_CSS/sub_paginas.css " rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".aba:first").show();
		$("#nave_aba a").click(function() {
			$(".aba").hide();
			var div = $(this).attr('href');
			$(div).show();
			return false;
		});
	});
</script>
</head>

<jsp:useBean id="user" class="ClassesProjetoLogica.LoginLogout" />

<body id="corpo">
	<div id="logo">
		<img src="./IMG/Planejamento.gif" />
	</div>
	<div id="bemvindo">
		Bem Vindo! <label>${emailUser} </label>| <a href="./index.jsp"
			style="cursor: hand;"
			onclick="window.location=<%session.invalidate();%>'">Sair</a>
	</div>

	<div id="atualizacoes">
		<ul id="nave_aba">
			<li><a href="#pedidos"><strong>Pedidos</strong></a></li>
			<li><a href="#produtos"><strong>Produtos</strong></a></li>
			<li><a href="#categorias"><strong>categorias</strong></a></li>
			<li><a href="#status"><strong>Staus</strong></a></li>
			<li><a href="#clientes"><strong>Clientes</strong></a></li>
			<li><a href="#visupedidos"><strong>Visualizar -
						Pedidos</strong></a></li>
			<li><a href="#visucliente"><strong>Visualizar -
						Clientes</strong></a></li>
			<li><a href="#entrega"><strong>Entrega</strong></a></li>
			<li><a href="#relatorios"><strong>Relatórios</strong></a></li>
		</ul>
	</div>

	<div id="pedidos" class="aba">
		
	</div>

	<div id="produtos" class="aba">
		<c:import url="/Paginas/cad_produtos.jsp"></c:import>
	</div>

	<div id="categorias" class="aba">
		<c:import url="/Paginas/cad_categorias.jsp"></c:import>
	</div>

	<div id="status" class="aba">
		<c:import url="/Paginas/cad_status.jsp"></c:import>
	</div>

	<div id="clientes" class="aba">
		<c:import url="/Paginas/cad_clientes.jsp"></c:import>
	</div>

	<div id="visupedidos" class="aba">
		<c:import url="/Paginas/visao_pedidos.jsp"></c:import>
	</div>

	<div id="visucliente" class="aba">
		<c:import url="/Paginas/visao_clientes.jsp"></c:import>
	</div>

	<div id="entrega" class="aba"></div>

	<div id="relatorios" class="aba"></div>

</body>
</html>