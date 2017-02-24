package Controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Contratos.Logica;

@WebServlet(description = "Servlet_Controladora", urlPatterns = { "/ControllerServlet" })

public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		 String parametro = request.getParameter("logica");
		 String bolaDaVez = "ClassesProjetoLogica." + parametro;
		
		 try {
		      Class<?> classe = Class.forName(bolaDaVez);
		
		      Logica logica = (Logica) classe.newInstance();
		      logica.executa(request, response);
		      
	  } catch (Exception e) {
			throw new ServletException("A l�gica de neg�cios causou uma exce��o", e);
          }
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
	}

}
