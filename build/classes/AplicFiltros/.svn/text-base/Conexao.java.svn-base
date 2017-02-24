package AplicFiltros;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import AplicBD.FabricaConexao;



@WebFilter("/Conexao")
public class Conexao implements Filter {
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {
		
		try{
			Connection connection = new FabricaConexao().getConnection();
			
				request.setAttribute("conexao", connection);
			
				   chain.doFilter(request, response);
			
				connection.close();
				
				System.out.println("Conexao fechada com sucesso!");
				
		}catch(SQLException e){
			throw new ServletException(e);
		}
	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void init(FilterConfig arg0) 
		throws ServletException {
			
	}

}
