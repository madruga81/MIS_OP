package ClassesProjetoLogica;

import java.io.IOException;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AplicBD.ProdutoDAO;
import Contratos.Logica;
import Modelo.Produto;

public class CadastrarProduto implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cod_categoria = request.getParameter("categoria").trim();
		String nome = request.getParameter("produto").trim();
		String descricao = request.getParameter("descricao").trim();
		String peso = request.getParameter("peso").trim();
		String data_cad = request.getParameter("data_cad").trim();
		String estoque = request.getParameter("estoque").trim();
		String prod_ativo = request.getParameter("prod_ativo").trim();
		String arquivo = request.getParameter("arquivo").trim();
		Calendar dataCalendar = null;

		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(data_cad);
			dataCalendar = Calendar.getInstance();
			dataCalendar.setTime(date);
		} catch (ParseException e) {
			System.out.println("Erro ao converter a Data!");
			return;
		}

		Produto produto = new Produto();

		produto.setId_categoria(Integer.parseInt(cod_categoria));
		produto.setNome(nome);
		produto.setDescricao(descricao);
		produto.setPeso(Float.parseFloat(peso));
		produto.setData_cad(dataCalendar);
		produto.setQt_estoque(Integer.parseInt(estoque));
		produto.setProd_ativo(prod_ativo);
		produto.setImagem_prod(arquivo);
		
		Connection connection = (Connection)request.getAttribute("conexao");
		ProdutoDAO produtoDAO = new ProdutoDAO(connection);
		produtoDAO.cadastrarProduto(produto);

	}

}
