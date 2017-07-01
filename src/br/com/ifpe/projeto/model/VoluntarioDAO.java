package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class VoluntarioDAO {

	// Conexao com o banco
		private Connection connection; 
		public VoluntarioDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		
	//Metodo inserir do voluntario
	public void inserirVoluntario(Voluntario voluntario) { 
		try { 
		String sql = "INSERT INTO voluntario (cpf, nome, orgao_publico, email,telefone,id_ponto_apoio,id_local_abrigo) VALUES (?,?,?,?,?,?,?)"; 
		PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql); 
		stmt.setString(1, voluntario.getCpf()); 
		stmt.setString(2, voluntario.getNome());
		stmt.setString(3, voluntario.getOrgao_publico());
		stmt.setString(4, voluntario.getEmail());
		stmt.setString(5, voluntario.getTelefone());
		stmt.setInt(6, voluntario.getId_ponto_apoio());
		stmt.setInt(7, voluntario.getId_local_abrigo());
		
		
		}catch (SQLException e) { 
			throw new RuntimeException(e); 
	}
	}
}
