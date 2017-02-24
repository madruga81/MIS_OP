<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Cadastro de Pedidos</title>
</head>
<body>
	<div id="cenario">
		<form action="planejamento" method="post" id="cad_form">
			<table border="0" id="tabela">
				<tr>
					<td colspan="9" align="center" height="80"><label
						class="form_leb">Cadastro de Produtos</label></td>
				</tr>

				<tr>
					<td rowspan="9" align="center"></td>
					<td colspan="2" width="80"><label class="form_leb">Categoria:</label></td>
					<jsp:useBean id="dao" class="AplicBD.ProdutoDAO" />
					<td colspan="5"><select name="categoria">
							<c:forEach var="categ" items="${dao.lista}">
								<option value="${categ.id_categoria}">${categ.nome}</option>
							</c:forEach>
					</select></td>
					<td rowspan="9"></td>
				</tr>
				<tr>
					<td colspan="2" width="100px"><label class="form_leb">Nome
							do Produto:</label></td>
					<td colspan="5"><input type="text" name="produto" value=""
						size="50" class="form_imp" /></td>
				</tr>
				<tr>
					<td colspan="2"><label class="form_leb">Descrição:</label></td>
					<td colspan="5"><textarea name="descricao" cols="38" rows="6"
							class="form_imp"></textarea></td>
				</tr>

				<tr>
					<td colspan="2"><label class="form_leb">Peso:</label></td>
					<td colspan="5"><input type="text" name="peso" value=""
						size="20" class="form_imp" /></td>
				</tr>

				<tr>
					<td colspan="2"><label class="form_leb">Data de
							Cadastro:</label></td>
					<td colspan="5"><input type="text" name="data_cad" value=""
						size="20" class="form_imp" /></td>
				</tr>

				<tr>
					<td colspan="2"><label class="form_leb">Quantidade em
							Estoque:</label></td>
					<td colspan="5"><input type="text" name="estoque" value=""
						size="20" class="form_imp" /></td>
				</tr>
				<tr>
					<td rowspan="2"><label class="form_leb">Produto Ativo:
					</label></td>
					<td colspan="5"><input type="radio" name="prod_ativo"
						value="S" /> <label class="form_leb">Sim</label></td>
				</tr>
				<tr>
					<td colspan="5"><input type="radio" name="prod_ativo"
						value="N" /> <label class="form_leb">Não</label></td>
				</tr>
				<tr>
					<td colspan="2"><label class="form_leb">Imagem do
							Produto:</label></td>
					<td colspan="5"><input type="file" name="arquivo" id="arquivo"
						id="botao_form" /></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td colspan="5"><input type="hidden" name="logica" value="CadastrarProduto" /><input type="submit"
						value="Cadastrar produto" id="botao_form" /></td>
				</tr>
				<tr>
					<td colspan="9" align="center"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>