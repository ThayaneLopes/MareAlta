package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
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

	public void inserirCidadeRisco(CidadeRisco cidaderisco) throws ElementoJaExistenteException {
		try {
			String sql = "INSERT INTO cidade_risco (nome,regiao,situacao_risco) VALUES (?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, cidaderisco.getNome());
			stmt.setString(2, cidaderisco.getRegiao());
			stmt.setString(3, cidaderisco.getSituacaoRisco());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLIntegrityConstraintViolationException e) {
			throw new ElementoJaExistenteException();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<CidadeRisco> listar(String busca, String situacaoRisco) {

		try {
			List<CidadeRisco> listaCidades = new ArrayList<CidadeRisco>();
			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM cidade_risco WHERE nome like ? AND situacao_risco like ?");
			stmt.setString(1, '%' + busca + '%');
			stmt.setString(2, '%' + situacaoRisco + '%');
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				CidadeRisco cidades = new CidadeRisco();

				cidades.setId(rs.getInt("id"));
				cidades.setNome(rs.getString("nome"));
				cidades.setRegiao(rs.getString("regiao"));
				cidades.setSituacaoRisco(rs.getString("situacao_risco"));

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
	public List<CidadeRisco> listartodas()
	{
		try {
			List<CidadeRisco> listaCidades = new ArrayList<CidadeRisco>();
			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM cidade_risco");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				CidadeRisco cidades = new CidadeRisco();

				cidades.setId(rs.getInt("id"));
				cidades.setNome(rs.getString("nome"));
				cidades.setRegiao(rs.getString("regiao"));
				cidades.setSituacaoRisco(rs.getString("situacao_risco"));

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
	public void alterar(CidadeRisco cidaderisco) {

		String sql = "UPDATE cidade_risco SET nome=?, regiao=?, situacao_risco=? WHERE id=?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);

			stmt.setString(1, cidaderisco.getNome());
			stmt.setString(2, cidaderisco.getRegiao());
			stmt.setString(3, cidaderisco.getSituacaoRisco());
			stmt.setInt(4, cidaderisco.getId());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public CidadeRisco buscarPorId(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM cidade_risco WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			CidadeRisco cidaderisco = new CidadeRisco();

			while (rs.next()) {

				cidaderisco.setId(rs.getInt("id"));
				cidaderisco.setNome(rs.getString("nome"));
				cidaderisco.setRegiao(rs.getString("regiao"));
				cidaderisco.setSituacaoRisco(rs.getString("situacao_risco"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return cidaderisco;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public boolean removerCidade(int id) throws SQLException {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM local_abrigo WHERE cidade = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			if (!rs.first()) {
				PreparedStatement sql = this.connection.prepareStatement("DELETE FROM cidade_risco where id = ?");
				sql.setInt(1, id);
				sql.execute();
				sql.close();
				connection.close();
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
