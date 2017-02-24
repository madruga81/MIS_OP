package ClassesProjetoLogica;

import java.io.IOException;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AplicBD.ClienteDAO;
import Contratos.Logica;
import Modelo.Cliente;

public class CadastroCliente implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome").trim();
		String email = request.getParameter("email").trim();
		String endereco = request.getParameter("endereco").trim();
		String cep = request.getParameter("cep").trim();
		String bairro = request.getParameter("bairro").trim();
		String cidade = request.getParameter("cidade").trim();
		String estado = request.getParameter("estado").trim();
		String pais = request.getParameter("pais").trim();
		String complemento = request.getParameter("complemento").trim();
		String telefone = request.getParameter("telefone").trim();
		String dataTexto = request.getParameter("dataCadastro").trim();
		Calendar dataCalendar = null;

		try {
			Date date = new SimpleDateFormat("dd/MM/yyy").parse(dataTexto);
			dataCalendar = Calendar.getInstance();
			dataCalendar.setTime(date);
		} catch (ParseException e) {
			System.out.println("Erro ao converter a Data!");
			return;
		}

		Cliente cliente = new Cliente();

		cliente.setNome(nome);
		cliente.setEmail(email);
		cliente.setEndereco(endereco);
		cliente.setCep(cep);
		cliente.setBairro(bairro);
		cliente.setCidade(cidade);
		cliente.setEstado(estado);
		cliente.setPais(pais);
		cliente.setComplemento(complemento);
		cliente.setTelefone(telefone);
		cliente.setData_cadastro(dataCalendar);

		Connection connection = (Connection) request.getAttribute("conexao");
		ClienteDAO clienteDAO = new ClienteDAO(connection);
		clienteDAO.cadastrarCliente(cliente);

	}

}
