package AplicBD;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class FabricaConexao {

	public Connection getConnection() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			return DriverManager.getConnection("jdbc:mysql://localhost/mis_op",
					"root", "m4ckinto5h");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}	
	}

}
