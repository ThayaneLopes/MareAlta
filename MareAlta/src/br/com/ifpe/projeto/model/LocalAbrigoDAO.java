package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class LocalAbrigoDAO {

	// Conexao com o banco
		private Connection connection; 
		public LocalAbrigoDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		
		//Metodo inserir do local de abrigo
		public void inserirLocalAbrigo(LocalAbrigo localabrigo) { 
			try { 
			String sql = "INSERT INTO local_abrigo (nome,responsavel,telefone1,telefone2,estado,bairro,endereco,complemento,cidade,cep,precisa_voluntario,quantidade_familias) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"; 
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql); 
			stmt.setString(1, localabrigo.getNome()); 
			stmt.setString(2, localabrigo.getResponsavel());
			stmt.setString(3, localabrigo.getTelefone1());
			stmt.setString(4, localabrigo.getTelefone2());
			stmt.setString(5, localabrigo.getEstado());
			stmt.setString(6, localabrigo.getBairro());
			stmt.setString(7, localabrigo.getEndereco());
			stmt.setString(8, localabrigo.getComplemento());
			stmt.setString(9, localabrigo.getCidade());
			stmt.setString(10, localabrigo.getCep());
			stmt.setBoolean(11, localabrigo.isPrecisa_voluntario());
			stmt.setInt(12, localabrigo.getQuantidade_familias());
			
			
			}catch (SQLException e) { 
				throw new RuntimeException(e); 
		}
		}
		
		
		
		
		
}
