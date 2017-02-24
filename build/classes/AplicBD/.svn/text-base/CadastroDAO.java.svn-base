package AplicBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Modelo.Cadastro;

public class CadastroDAO {
	
	private Connection connection;
	
	public CadastroDAO(Connection connection){
		this.connection = connection;
	}
	
	public void cadastrar(Cadastro cadastro){
		
		String sql = "insert into mis_op_usuarios(nome, email, senha, confirma_senha)values(?,?,?,?)";
		
		try{
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getEmail());
			stmt.setString(3, cadastro.getSenha());
			stmt.setString(4, cadastro.getConfirmaSenha());
			
			stmt.execute();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}

}
