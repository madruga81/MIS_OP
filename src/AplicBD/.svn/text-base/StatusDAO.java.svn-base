package AplicBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Modelo.Status;

public class StatusDAO {
	
	private Connection connection;
	
	public StatusDAO(Connection connection){
		this.connection = connection;
	}
	
	public void cadastrarStatus(Status status){
		
		String sql = "insert into status(nome_status)values(?)";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, status.getNome());
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}

}
