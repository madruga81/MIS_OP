package ClassesProjetoLogica;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AplicBD.CategoriaDAO;
import Contratos.Logica;
import Modelo.Categoria;

public class CadastrarCategoria implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome_categoria").trim();
		String ativo = request.getParameter("ativo").trim();
		
		Categoria categoria = new Categoria();
		
		categoria.setNome(nome);
		categoria.setAtivo(ativo);
		
		Connection connection = (Connection) request.getAttribute("conexao");
		CategoriaDAO categoriaDAO = new CategoriaDAO(connection);
		categoriaDAO.cadastrarCategoria(categoria);
		
	}

}
