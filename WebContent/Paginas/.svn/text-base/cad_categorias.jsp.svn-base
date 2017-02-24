<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" session="true" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Categorias</title>
</head>
<body>
	<div id="cenario">
		<table border="0" align="center">
			<tr>
				<td></td>
				<td valign="top">
					<form action="planejamento" method="post" id="cad_form">
						<table align="center">
							<tr>
								<td height="80" colspan="2" align="center"><label
									class="form_leb"> Administração - Cadastrar categorias</label></td>
							</tr>
							<tr valign="baseline">
								<td align="right" nowrap="nowrap"><label class="form_leb">Nome
										da categoria:</label></td>
								<td><input type="text" name="nome_categoria" value=""
									size="32" class="form_imp" /></td>
							</tr>
							<tr valign="baseline">
								<td nowrap="nowrap" align="right"><label class="form_leb">Categoria
										ativa?</label></td>
								<td valign="baseline"><table>
										<tr>
											<td><input type="radio" name="ativo" value="S"
												class="form_imp" /> <label class="form_leb">Sim</label></td>
										</tr>
										<tr>
											<td><input type="radio" name="ativo" value="N"
												class="form_imp" /> <label class="form_leb">Não</label></td>
										</tr>
									</table></td>
							</tr>
							<tr valign="baseline">
								<td nowrap="nowrap" align="right">&nbsp;</td>
								<td><input type="hidden" name="logica"
									value="CadastrarCategoria" /><input type="submit"
									value="Cadastrar categoria" id="botao_form" /></td>
								<td></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>

		</table>
	</div>
</body>
</html>