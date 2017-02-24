package AplicBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Modelo.Usuarios;

public class AltenticDAO {

	private Connection connection;

	public AltenticDAO(Connection connection) {
		this.connection = connection;
	}

	public boolean Autenticar(Usuarios usuarios) {

		boolean resultado = false;

		try {

			PreparedStatement stmt = this.connection
					.prepareStatement("select email, senha from mis_op_usuarios where email = ? and senha = ?");

			stmt.setString(1, usuarios.getemailUser());
			stmt.setString(2, usuarios.getSenhaUser());

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				rs.getString("email");
				rs.getString("senha");

				if (rs.getString("email").equalsIgnoreCase(
						usuarios.getemailUser())
						&& rs.getString("senha").equalsIgnoreCase(
								usuarios.getSenhaUser())) {

					System.out.println("Usuario Altorizado!");

					resultado = true;

				} else {

					System.out.println("Usuario Não Altorizado!");

					resultado = false;

				}
			}

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return resultado;
	}

}
