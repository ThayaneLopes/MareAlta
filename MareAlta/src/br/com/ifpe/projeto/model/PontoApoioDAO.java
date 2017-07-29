package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class PontoApoioDAO {
	

		private Connection connection; 
		public PontoApoioDAO() { 
			try { 
				this.connection = new ConnectionFactory().getConnection(); 
			} catch (SQLException e) { 
					throw new RuntimeException(e); 
			}
		}
		

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
		stmt.setString(12, pontoapoio.getHorarioFuncionamento());
		stmt.setBoolean(13, pontoapoio.isFazColeta());
		stmt.setBoolean(14, pontoapoio.isFazTriagem());
		stmt.setBoolean(15, pontoapoio.isPrecisaVoluntarios());
		stmt.execute();
		stmt.close();
		connection.close();	
		}catch (SQLException e) { 
			throw new RuntimeException(e); 
	}
	}
	
	public List<PontoApoio> listar(String busca) {

		try {
		    List<PontoApoio> listapoio = new ArrayList<PontoApoio>();
		    PreparedStatement stmt = connection.prepareStatement("SELECT * FROM ponto_apoio WHERE nome like ?");
		    stmt.setString(1, '%' + busca + '%');
		    ResultSet rs = stmt.executeQuery();

		    while (rs.next()) {

		    PontoApoio apoio = new PontoApoio();

		    apoio.setId(rs.getInt("id"));
		    apoio.setNome(rs.getString("nome"));
		    apoio.setResponsavel(rs.getString("responsavel"));
		    apoio.setTelefone1(rs.getString("telefone_1"));
		    apoio.setTelefone2(rs.getString("telefone_2"));
		    apoio.setEstado(rs.getString("estado"));
		    apoio.setBairro(rs.getString("bairro"));
		    apoio.setEndereco(rs.getString("endereco"));
		    apoio.setComplemento(rs.getString("complemento"));
			//abrigo.setCidade(rs.getInt("cidade"));
		    apoio.setCep(rs.getString("cep"));
		    apoio.setAtivo(rs.getBoolean("ativo"));
		    apoio.setHorarioFuncionamento(rs.getString("horarioFuncionamento"));
		    apoio.setFazColeta(rs.getBoolean("fazColeta"));
		    apoio.setFazTriagem(rs.getBoolean("fazTriagem"));
		    apoio.setPrecisaVoluntarios(rs.getBoolean("precisaVoluntarios"));
		    
		    
			listapoio.add(apoio);
		    }

		    rs.close();
		    stmt.close();
		    connection.close();

		    return listapoio;

		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
	    }

}
