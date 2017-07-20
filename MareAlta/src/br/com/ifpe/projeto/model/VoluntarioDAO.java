package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
		PreparedStatement stmt =connection.prepareStatement(sql); 
		stmt.setString(1, voluntario.getCpf()); 
		stmt.setString(2, voluntario.getNome());
		stmt.setString(3, voluntario.getOrgaoPublico());
		stmt.setString(4, voluntario.getEmail());
		stmt.setString(5, voluntario.getTelefone());
		stmt.setObject(6, voluntario.getIdPontoApoio());
		stmt.setObject(7, voluntario.getIdLocalAbrigo());
		stmt.execute();
		stmt.close();
		connection.close();
		}catch (SQLException e) { 
			throw new RuntimeException(e); 
	}
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
			voluntario.setOrgaoPublico(rs.getString("orgaoPublico"));
			voluntario.setEmail(rs.getString("email"));
			voluntario.setTelefone1(rs.getString("telefone1"));
			voluntario.setTelefone2(rs.getString("telefone2"));

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
}
