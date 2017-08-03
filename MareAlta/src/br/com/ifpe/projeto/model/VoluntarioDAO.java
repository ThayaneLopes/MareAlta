package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import br.com.ifpe.projeto.util.ConnectionFactory;

public class VoluntarioDAO {

	private Connection connection;

	public VoluntarioDAO() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void inserirVoluntario(Voluntario voluntario) {
		try {
			String sql = "INSERT INTO voluntario (cpf, nome, orgao_publico, email,telefone,id_ponto_apoio,id_local_abrigo) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, voluntario.getCpf());
			stmt.setString(2, voluntario.getNome());
			stmt.setString(3, voluntario.getOrgao_publico());
			stmt.setString(4, voluntario.getEmail());
			stmt.setString(5, voluntario.getTelefone());
			stmt.setObject(6, voluntario.getPontoApoio());
			stmt.setObject(7, voluntario.getLocalAbrigo());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}



	public List<Voluntario> listar(String busca) {

		try {
			List<Voluntario> listaVoluntarios = new ArrayList<Voluntario>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM voluntario WHERE nome like ?");
			stmt.setString(1, '%' + busca + '%');
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Voluntario voluntario = new Voluntario();

				voluntario.setId(rs.getInt("id"));
				voluntario.setNome(rs.getString("nome"));
				voluntario.setCpf(rs.getString("cpf"));
				voluntario.setOrgao_publico(rs.getString("orgao_publico"));
				voluntario.setEmail(rs.getString("email"));
				voluntario.setTelefone(rs.getString("telefone"));
				

				listaVoluntarios.add(voluntario);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaVoluntarios;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public Voluntario buscarVoluntarioId(int id)
		{
		try {
		    
		    PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM voluntario WHERE id = ?");
		    stmt.setInt(1, id);
		    ResultSet rs = stmt.executeQuery();
		    
		    Voluntario voluntario = new Voluntario();
		    
		    while (rs.next()) {

		    voluntario.setId(rs.getInt("id"));
		    voluntario.setCpf(rs.getString("cpf"));
		    voluntario.setNome(rs.getString("nome"));
		    voluntario.setOrgao_publico(rs.getString("orgao_publico"));
		    voluntario.setEmail(rs.getString("email"));
		    voluntario.setTelefone(rs.getString("telefone"));
		    }

		    rs.close();
		    stmt.close();
		    connection.close();

		    return voluntario;

		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
		
	}
	public void atualizarVoluntario(Voluntario voluntario) {
		try {
			String sql = "UPDATE voluntario SET cpf=?, nome=?, orgao_publico=?, email=?,telefone=? WHERE id=?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, voluntario.getCpf());
			stmt.setString(2, voluntario.getNome());
			stmt.setString(3, voluntario.getOrgao_publico());
			stmt.setString(4, voluntario.getEmail());
			stmt.setString(5, voluntario.getTelefone());
			stmt.setInt(6, voluntario.getId());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void remover(Integer id) {

		try {

		    String sql = "DELETE FROM voluntario WHERE id = ?";
		    PreparedStatement stmt = connection.prepareStatement(sql);
		    stmt.setInt(1, id);

		    stmt.execute();
		    connection.close();

		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
	    }
	
	
}
