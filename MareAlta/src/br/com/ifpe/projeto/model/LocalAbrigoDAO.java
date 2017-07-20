package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class LocalAbrigoDAO {


		private Connection connection; 
		public LocalAbrigoDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		

		public void inserirLocalAbrigo(LocalAbrigo localabrigo) { 
			try { 
			String sql = "INSERT INTO local_abrigo (nome,responsavel,telefone_1,telefone_2,estado,bairro,rua_avenida,complemento,cidade,cep,precisa_voluntario,quant_de_familias) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"; 
			PreparedStatement stmt =connection.prepareStatement(sql); 
			stmt.setString(1, localabrigo.getNome()); 
			stmt.setString(2, localabrigo.getResponsavel());
			stmt.setString(3, localabrigo.getTelefone1());
			stmt.setString(4, localabrigo.getTelefone2());
			stmt.setString(5, localabrigo.getEstado());
			stmt.setString(6, localabrigo.getBairro());
			stmt.setString(7, localabrigo.getRuaAvenida());
			stmt.setString(8, localabrigo.getComplemento());
			stmt.setInt(9, localabrigo.getCidade());
			stmt.setString(10, localabrigo.getCep());
			stmt.setBoolean(11, localabrigo.isPrecisaVoluntarios());
			stmt.setInt(12, localabrigo.getQuantidadeFamilia());
			stmt.execute();
			stmt.close();
			connection.close();
			}catch (SQLException e) { 
				throw new RuntimeException(e); 
		}
		}
		
		
		
		
		
}
