package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;

import br.com.ifpe.projeto.util.ConnectionFactory;

public class TipoDoacaoDAO {

	private Connection connection;

	public TipoDoacaoDAO() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void inserirTipoDoacao(TipoDoacao tipodoacao) throws ElementoJaExistenteException {
		try {
			String sql = "INSERT INTO tipo_doacao (nome,ativo) VALUES (?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, tipodoacao.getNome());
			stmt.setBoolean(2, tipodoacao.isAtivo());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLIntegrityConstraintViolationException e) {
			throw new ElementoJaExistenteException();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<TipoDoacao> listar(String busca) {

		try {
			List<TipoDoacao> listatiposdoacao = new ArrayList<TipoDoacao>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipo_doacao WHERE nome like ?");
			stmt.setString(1, '%' + busca + '%');
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				TipoDoacao tiposdoacoes = new TipoDoacao();

				tiposdoacoes.setId(rs.getInt("id"));
				tiposdoacoes.setNome(rs.getString("nome"));
				tiposdoacoes.setAtivo(rs.getBoolean("ativo"));

				listatiposdoacao.add(tiposdoacoes);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listatiposdoacao;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public TipoDoacao buscartipodoacaoporId(int id) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipo_doacao WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			TipoDoacao tipodoacao = new TipoDoacao();

			if (rs.next()) {

				tipodoacao.setId(rs.getInt("id"));
				tipodoacao.setNome(rs.getString("nome"));
				tipodoacao.setAtivo(rs.getBoolean("ativo"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return tipodoacao;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void atualizarTipoDoacao(TipoDoacao tipoDoacao) {
		try {
			String sql = "UPDATE tipo_doacao SET nome=?, ativo=? WHERE id=?";
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, tipoDoacao.getNome());
			stmt.setBoolean(2, tipoDoacao.isAtivo());
			stmt.setInt(3, tipoDoacao.getId());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void removertipodoacao(int id) {
		try {
			String sql = "DELETE FROM tipo_doacao WHERE id=?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public List<TipoDoacao> listarativos() {
		try {
			List<TipoDoacao> listatiposdoacao = new ArrayList<TipoDoacao>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipo_doacao WHERE ativo = 1");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				TipoDoacao tiposdoacoes = new TipoDoacao();

				tiposdoacoes.setId(rs.getInt("id"));
				tiposdoacoes.setNome(rs.getString("nome"));
				tiposdoacoes.setAtivo(rs.getBoolean("ativo"));

				listatiposdoacao.add(tiposdoacoes);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listatiposdoacao;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
