<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="AplicBD.ClienteDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" session="true" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Clientes</title>
<link href="./CSS/Sub_CSS/sub_paginas.css " rel="stylesheet"
	type="text/css" />
<jsp:useBean id="clidao" class="AplicBD.ClienteDAO" />	
</head>
<body>
	<table align="center" width="100%" border="0" class="tabela_cli">
		<tr>
			<td align="center">Nome</td>
			<td align="center">Email</td>
			<td align="center">Endereco</td>
			<td align="center">Cep</td>
			<td align="center">Bairro</td>
			<td align="center">Cidade</td>
			<td align="center">Estado</td>
			<td align="center">Pais</td>
			<td align="center">Complemento</td>
			<td align="center">Telefone</td>
			<td align="center">Data do Cadastro</td>
		</tr>
		<tr>
			<c:forEach var="cliente" items="${clidao.lista}">
				<td align="center">${cliente.nome}</td>
				<td align="center">${cliente.email}</td>
				<td align="center">${cliente.endereco}</td>
				<td align="center">${cliente.cep}</td>
				<td align="center">${cliente.bairro}</td>
				<td align="center">${cliente.cidade}</td>
				<td align="center">${cliente.estado}</td>
				<td align="center">${cliente.pais}</td>
				<td align="center">${cliente.complemento}</td>
				<td align="center">${cliente.telefone}</td>
				<td align="center">${cliente.data_cadastro}</td>
			</c:forEach>
		</tr>
	</table>
</body>
</html>