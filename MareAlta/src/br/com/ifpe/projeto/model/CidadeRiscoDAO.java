package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class CidadeRiscoDAO {

	private Connection connection;

	public CidadeRiscoDAO() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
	public void inserirCidadeRisco(CidadeRisco cidaderisco) {
		try {
			String sql = "INSERT INTO cidade_risco (nome,regiao,situacao_risco) VALUES (?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, cidaderisco.getNome());
			stmt.setString(2, cidaderisco.getRegiao());
			stmt.setString(3, cidaderisco.getSituacaoRisco());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<CidadeRisco> listar(String busca) {

		try {
		    List<CidadeRisco> listaCidades = new ArrayList<CidadeRisco>();
		    PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM cidade_risco WHERE nome like ?");
		    stmt.setString(1, '%' + busca + '%');
		    ResultSet rs = stmt.executeQuery();

		    while (rs.next()) {

			CidadeRisco cidades = new CidadeRisco();

			cidades.setId(rs.getInt("id"));
			cidades.setNome(rs.getString("nome"));
			cidades.setRegiao(rs.getString("regiao"));
			cidades.setSituacao_risco(rs.getString("situacao_risco"));

			listaCidades.add(cidades);
		    }

		    rs.close();
		    stmt.close();
		    connection.close();

		    return listaCidades;

		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
	    }
}
