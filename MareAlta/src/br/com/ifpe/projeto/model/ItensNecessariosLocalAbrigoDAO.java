package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class ItensNecessariosLocalAbrigoDAO {
	
	// Conexao com o banco
				private Connection connection; 
				public ItensNecessariosLocalAbrigoDAO() { 
					try { 
						this.connection = new ConnectionFactory().getConnection(); 
					} catch (SQLException e) { 
							throw new RuntimeException(e); 
					}
				}
				
				//Metodo inserir do itens necessarios local abrigo 
				public void inserirItensNecessariosLocalAbrigo(ItensNecessariosLocalAbrigo itensnecessarioslocalabrigo) { 
					try { 
					String sql = "INSERT INTO itens_necessarios_local_abrigo (id,id_local_abrigo,id_tipo_doacao) VALUES (?,?,?)"; 
					PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql); 
					stmt.setInt(1, itensnecessarioslocalabrigo.getId()); 
					stmt.setInt(2, itensnecessarioslocalabrigo.getId_local_abrigo());
					stmt.setInt(3, itensnecessarioslocalabrigo.getId_tipo_doacao());
					}catch (SQLException e) { 
						throw new RuntimeException(e); 
				}
				}

}
