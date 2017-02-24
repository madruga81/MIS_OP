package AplicBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Modelo.Categoria;

public class CategoriaDAO {

	private Connection connection;
	
	public CategoriaDAO(){
	}

	public CategoriaDAO(Connection connection) {
		this.connection = connection;
	}

	public void cadastrarCategoria(Categoria categoria) {

		String sql = "insert into categorias(nome_categoria, ativo)values(?,?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, categoria.getNome());
			stmt.setString(2, categoria.getAtivo());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
}
