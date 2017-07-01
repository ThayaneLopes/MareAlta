package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class TipoDoacaoDAO {
	
	// Conexao com o banco
		private Connection connection; 
		public TipoDoacaoDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		
		//Metodo inserir do itens doados
		public void inserirTipoDoacao(TipoDoacao tipodoacao) { 
			try { 
			String sql = "INSERT INTO tipo_doacao (nome,ativo) VALUES (?,?)"; 
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql); 
			stmt.setString(1, tipodoacao.getNome()); 
			stmt.setBoolean(2, tipodoacao.isAtivo());
			
			}catch (SQLException e) { 
				throw new RuntimeException(e); 
		}
		}		

}
