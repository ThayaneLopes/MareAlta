package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class CidadeRiscoDAO {
	
	// Conexao com o banco
		private Connection connection; 
		public CidadeRiscoDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		
	//Metodo inserir do cidade de risco
		public void inserirCidadeRisco(CidadeRisco cidaderisco) { 
			try { 
			String sql = "INSERT INTO cidade_risco (nome,regiao,situacao_risco) VALUES (?,?,?)"; 
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql); 
			stmt.setString(1, cidaderisco.getNome()); 
			stmt.setString(2, cidaderisco.getRegiao());
			stmt.setString(3, cidaderisco.getSituacao_risco());
			}catch (SQLException e) { 
				throw new RuntimeException(e); 
		}
		}
}
