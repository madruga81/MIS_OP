package AplicBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Modelo.Categoria;
import Modelo.Produto;

public class ProdutoDAO {

	private Connection connection;

	public ProdutoDAO() {

	}

	public ProdutoDAO(Connection connection) {
		this.connection = connection;
	}

	public void cadastrarProduto(Produto produto) {

		String sql = "insert into produtos(id_categoria, nome, descricao, peso, data_cadastro, "
				+ "qtd_estoque, prod_ativo, imagem_produto)values(?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setInt(1, produto.getId_categoria());
			stmt.setString(2, produto.getNome());
			stmt.setString(3, produto.getDescricao());
			stmt.setFloat(4, produto.getPeso());
			stmt.setDate(5, new java.sql.Date(produto.getData_cad()
					.getTimeInMillis()));
			stmt.setInt(6, produto.getQt_estoque());
			stmt.setString(7, produto.getProd_ativo());
			stmt.setString(8, produto.getImagem_prod());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Categoria> getLista() {

		FabricaConexao conexao = new FabricaConexao();
		this.connection = conexao.getConnection();

		String sql = "select id_categoria, nome_categoria from categorias";

		try {
			List<Categoria> categorias = new ArrayList<Categoria>();
			PreparedStatement stmt = connection.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Categoria categ = new Categoria();

				categ.setId_categoria(rs.getInt("id_categoria"));
				categ.setNome(rs.getString("nome_categoria"));

				categorias.add(categ);
			}

			rs.close();
			stmt.close();
			this.connection.close();
			System.out.println("Conexão do combo foi fechada!");
		
			return categorias;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
