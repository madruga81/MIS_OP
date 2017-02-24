package AplicBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import Modelo.Cliente;

public class ClienteDAO {

	private Connection connection;

	public ClienteDAO(Connection connection) {
		this.connection = connection;
	}

	public void cadastrarCliente(Cliente cliente) {

		String sql = "insert into clientes(nome, email, endereco, cep, bairro, cidade, estado, pais, "
				+ "complemento, telefone, data_cadastro)values(?,?,?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getEmail());
			stmt.setString(3, cliente.getEndereco());
			stmt.setString(4, cliente.getCep());
			stmt.setString(5, cliente.getBairro());
			stmt.setString(6, cliente.getCidade());
			stmt.setString(7, cliente.getEstado());
			stmt.setString(8, cliente.getPais());
			stmt.setString(9, cliente.getComplemento());
			stmt.setString(10, cliente.getTelefone());
			stmt.setDate(11, new java.sql.Date(cliente.getData_cadastro().getTimeInMillis())); 
			
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}

	public List<Cliente> getLista(){
		
		FabricaConexao conexao = new FabricaConexao();
		this.connection = conexao.getConnection();
		
		String sql = "select * from clientes";
		
		try {
			List<Cliente> clientes = new ArrayList<Cliente>();
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()){
				
				Cliente cliente = new Cliente();
				
				cliente.setNome(rs.getString("nome"));
				cliente.setEmail(rs.getString("email"));
				cliente.setEndereco(rs.getString("endereco"));
				cliente.setCep(rs.getString("cep"));
				cliente.setBairro(rs.getString("bairro"));
				cliente.setCidade(rs.getString("cidade"));
				cliente.setEstado(rs.getString("estado"));
				cliente.setPais(rs.getString("pais"));
				cliente.setComplemento(rs.getString("complemento"));
				cliente.setTelefone(rs.getString("telefone"));
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("data_cadastro"));
				
				clientes.add(cliente);
				rs.close();
				stmt.close();
				this.connection.close();
				System.out.println("fechou a conexao do listar cliente");
				
			}
			
			return clientes;
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}
