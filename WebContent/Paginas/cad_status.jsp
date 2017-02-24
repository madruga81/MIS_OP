<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" session="true" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Status</title>
</head>
<body>
	<div id="cenario">
		<table width="760" border="0" align="center">
			<tr>
				<td></td>
				<td valign="top">
					<form action="planejamento" method="post" id="cad_form">
						<table align="center">
							<tr>
								<td colspan="2" align="center" height="80px"><label
									class="form_leb"> Administração - Cadastrar status de
										pedidos</label></td>
							</tr>
							<tr valign="baseline">
								<td nowrap="nowrap" align="right"><label class="form_leb">Nome
										do status:</label></td>
								<td><input type="text" name="nome_status" value=""
									size="32" class="form_imp" /></td>
							</tr>
							<tr valign="baseline">
								<td nowrap="nowrap" align="right">&nbsp;</td>
								<td><input type="hidden" name="logica" value="CadastrarStatus" /><input
									type="submit" value="Cadastrar status" id="botao_form" /></td>
								<td></td>
							</tr>
						</table>
					</form>
					<p>&nbsp;</p>
				</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
		</table>
	</div>
</body>
</html>