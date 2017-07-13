package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class PontoApoioDAO {
	
	// Conexao com o banco
		private Connection connection; 
		public PontoApoioDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		
	//Metodo inserir do ponto de apoio
	public void inserirPontoApoio(PontoApoio pontoapoio) { 
		try { 
		String sql = "INSERT INTO ponto_apoio (nome,responsavel,telefone_1,telefone_2,estado,bairro,rua_avenida,complemento,cidade,cep,ativo,horario_funcionamento,faz_coleta,faz_triagem,precisa_voluntario) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
		PreparedStatement stmt = connection.prepareStatement(sql); 
		stmt.setString(1, pontoapoio.getNome()); 
		stmt.setString(2, pontoapoio.getResponsavel());
		stmt.setString(3, pontoapoio.getTelefone1());
		stmt.setString(4, pontoapoio.getTelefone2());
		stmt.setString(5, pontoapoio.getEstado());
		stmt.setString(6, pontoapoio.getBairro());
		stmt.setString(7, pontoapoio.getEndereco());
		stmt.setString(8, pontoapoio.getComplemento());
		stmt.setString(9, pontoapoio.getCidade());
		stmt.setString(10, pontoapoio.getCep());
		stmt.setBoolean(11, pontoapoio.isAtivo());
		stmt.setString(12, pontoapoio.getHorario_funcionamento());
		stmt.setBoolean(13, pontoapoio.isFaz_coleta());
		stmt.setBoolean(14, pontoapoio.isFaz_triagem());
		stmt.setBoolean(15, pontoapoio.isPrecisa_voluntario());
		stmt.execute();
		stmt.close();
		connection.close();	
		}catch (SQLException e) { 
			throw new RuntimeException(e); 
	}
	}

}
