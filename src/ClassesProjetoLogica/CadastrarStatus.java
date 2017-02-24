package ClassesProjetoLogica;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AplicBD.StatusDAO;
import Contratos.Logica;
import Modelo.Status;

public class CadastrarStatus implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome_status").trim();
		
		Status status = new Status();
		
		status.setNome(nome);
		
		Connection connection = (Connection) request.getAttribute("conexao");
		StatusDAO statusDAO = new StatusDAO(connection);
		statusDAO.cadastrarStatus(status);

	}

}
