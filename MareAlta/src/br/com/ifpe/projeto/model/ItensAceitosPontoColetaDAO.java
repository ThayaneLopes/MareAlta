package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class ItensAceitosPontoColetaDAO {
	
		// Conexao com o banco
			private Connection connection; 
			public ItensAceitosPontoColetaDAO() { 
				try { 
					this.connection = new ConnectionFactory().getConnection(); 
				} catch (SQLException e) { 
						throw new RuntimeException(e); 
				}
			}
			
		//Metodo inserir dos itens aceitos ponto de coleta
			public void inserirItensAceitosPontoColeta(ItensAceitosPontoColeta itensaceitospontocoleta) { 
				try { 
				String sql = "INSERT INTO itens_aceitos_ponto_coleta (id,id_ponto_apoio,id_tipo_doacao) VALUES (?,?,?)"; 
				PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql); 
				stmt.setInt(1, itensaceitospontocoleta.getId()); 
				stmt.setInt(2, itensaceitospontocoleta.getId_ponto_apoio());
				stmt.setInt(3, itensaceitospontocoleta.getId_tipo_doacao());
				stmt.execute();
				stmt.close();
				connection.close();
				}catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
			}
}
