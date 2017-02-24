package Modelo;

import java.util.Calendar;

public class Produto {

	private int id_categoria;
	private String nome;
	private String descricao;
	private float peso;
	private Calendar data_cad;
	private int qt_estoque;
	private String prod_ativo;
	private float preco;
	private String imagem_prod;

	public int getId_categoria() {
		return id_categoria;
	}

	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public float getPeso() {
		return peso;
	}

	public void setPeso(float peso) {
		this.peso = peso;
	}

	public Calendar getData_cad() {
		return data_cad;
	}

	public void setData_cad(Calendar data_cad) {
		this.data_cad = data_cad;
	}

	public int getQt_estoque() {
		return qt_estoque;
	}

	public void setQt_estoque(int qt_estoque) {
		this.qt_estoque = qt_estoque;
	}

	public String getProd_ativo() {
		return prod_ativo;
	}

	public void setProd_ativo(String prod_ativo) {
		this.prod_ativo = prod_ativo;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public String getImagem_prod() {
		return imagem_prod;
	}

	public void setImagem_prod(String imagem_prod) {
		this.imagem_prod = imagem_prod;
	}

}
