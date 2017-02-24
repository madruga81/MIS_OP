package ClassesProjetoLogica;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AplicBD.CadastroDAO;
import Contratos.Logica;
import Modelo.Cadastro;

public class CadastrarUsuario implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome").trim();
		String email = request.getParameter("email").trim();
		String senha = request.getParameter("senha").trim();
		String confirma_senha = request.getParameter("confirma_senha").trim();

		Cadastro cadastro = new Cadastro();

		cadastro.setNome(nome);
		cadastro.setEmail(email);
		cadastro.setSenha(senha);
		cadastro.setConfirmaSenha(confirma_senha);

		Connection connection = (Connection) request.getAttribute("conexao");
		CadastroDAO dao = new CadastroDAO(connection);
		dao.cadastrar(cadastro);

		RequestDispatcher rd = request.getRequestDispatcher("/sucesso.jsp");
		rd.forward(request, response);

	}

}
