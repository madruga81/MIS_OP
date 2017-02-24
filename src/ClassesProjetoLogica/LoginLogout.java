package ClassesProjetoLogica;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AplicBD.AltenticDAO;
import Contratos.Logica;
import Modelo.Usuarios;
import Visao.Visao_Geral;

public class LoginLogout implements Logica {

	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("email").trim();
		String senha = request.getParameter("senha").trim();
		
		Usuarios usuarios = new Usuarios();
		
		usuarios.setemailUser(email);
		usuarios.setSenhaUser(senha);
		
		Connection connection = (Connection) request.getAttribute("conexao");
		AltenticDAO altenticar = new AltenticDAO(connection);
		altenticar.Autenticar(usuarios);
		
		if(altenticar.Autenticar(usuarios)){
			
			HttpSession sessao = request.getSession();
			sessao.setAttribute("emailUser", usuarios.getemailUser());
			
			Visao_Geral visao = new Visao_Geral();
			visao.executa(request, response);
			
		}else{
			
			HttpSession sessao = request.getSession();
			sessao.invalidate();
			
			RequestDispatcher rd = request.getRequestDispatcher("/erro.jsp");
			rd.forward(request, response);
			
		}
		

    }	

}
