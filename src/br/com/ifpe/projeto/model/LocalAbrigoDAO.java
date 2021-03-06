package br.com.ifpe.projeto.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	public void inserirLocalAbrigo(LocalAbrigo localabrigo) throws ElementoJaExistenteException{
		try {
			String sql = "INSERT INTO local_abrigo (nome,responsavel,telefone_1,telefone_2,estado,bairro,rua_avenida,complemento,cidade,cep,precisa_voluntario,quant_de_familias) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, localabrigo.getNome());
			stmt.setString(2, localabrigo.getResponsavel());
			stmt.setString(3, localabrigo.getTelefone1());
			stmt.setString(4, localabrigo.getTelefone2());
			stmt.setString(5, localabrigo.getEstado());
			stmt.setString(6, localabrigo.getBairro());
			stmt.setString(7, localabrigo.getRuaAvenida());
			stmt.setString(8, localabrigo.getComplemento());
			stmt.setInt(9, localabrigo.getCidadeRisco().getId());
			stmt.setString(10, localabrigo.getCep());
			stmt.setBoolean(11, localabrigo.isPrecisaVoluntarios());
			stmt.setInt(12, localabrigo.getQuantidadeFamilia());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<LocalAbrigo> listar(String busca) {

		try {
			List<LocalAbrigo> listabrigo = new ArrayList<LocalAbrigo>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM local_abrigo WHERE nome like ?");
			stmt.setString(1, '%' + busca + '%');
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				LocalAbrigo abrigo = new LocalAbrigo();

				abrigo.setId(rs.getInt("id"));
				abrigo.setNome(rs.getString("nome"));
				abrigo.setResponsavel(rs.getString("responsavel"));
				abrigo.setTelefone1(rs.getString("telefone_1"));
				abrigo.setTelefone2(rs.getString("telefone_2"));
				abrigo.setEstado(rs.getString("estado"));
				abrigo.setBairro(rs.getString("bairro"));
				abrigo.setRuaAvenida(rs.getString("rua_avenida"));
				abrigo.setComplemento(rs.getString("complemento"));
				abrigo.setCidadeRisco(buscarCidadePorID(rs.getInt("cidade")));
				abrigo.setCep(rs.getString("cep"));
				abrigo.setPrecisaVoluntarios(rs.getBoolean("precisa_voluntario"));
				abrigo.setQuantidadeFamilia(rs.getInt("quant_de_familias"));

				listabrigo.add(abrigo);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listabrigo;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	private CidadeRisco buscarCidadePorID(int id) {
		CidadeRiscoDAO cidade = new CidadeRiscoDAO();

		return cidade.buscarPorId(id);

	}

	public void remover(Integer id) {

		try {

			String sql = "DELETE FROM local_abrigo WHERE id = ?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, id);

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public LocalAbrigo buscarLocalAbrigoId(int id) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM local_abrigo WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			LocalAbrigo localAbrigo = new LocalAbrigo();

			while (rs.next()) {

				localAbrigo.setId(rs.getInt("id"));
				localAbrigo.setNome(rs.getString("nome"));
				localAbrigo.setResponsavel(rs.getString("responsavel"));
				localAbrigo.setTelefone1(rs.getString("telefone_1"));
				localAbrigo.setTelefone2(rs.getString("telefone_2"));
				localAbrigo.setEstado(rs.getString("estado"));
				localAbrigo.setBairro(rs.getString("bairro"));
				localAbrigo.setRuaAvenida(rs.getString("rua_avenida"));
				localAbrigo.setComplemento(rs.getString("complemento"));
				localAbrigo.setCidadeRisco(buscarCidadePorID(rs.getInt("cidade")));
				localAbrigo.setCep(rs.getString("cep"));
				localAbrigo.setPrecisaVoluntarios(rs.getBoolean("precisa_voluntario"));
				localAbrigo.setQuantidadeFamilia(rs.getInt("quant_de_familias"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return localAbrigo;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	public void atualizaLocalAbrigo(LocalAbrigo localabrigo) {
		try {
			String sql = "UPDATE local_abrigo SET nome=?,responsavel=?,telefone_1=?,telefone_2=?,estado=?,bairro=?,rua_avenida=?,complemento=?,cidade=?,cep=?,precisa_voluntario=?,quant_de_familias=? WHERE id=?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, localabrigo.getNome());
			stmt.setString(2, localabrigo.getResponsavel());
			stmt.setString(3, localabrigo.getTelefone1());
			stmt.setString(4, localabrigo.getTelefone2());
			stmt.setString(5, localabrigo.getEstado());
			stmt.setString(6, localabrigo.getBairro());
			stmt.setString(7, localabrigo.getRuaAvenida());
			stmt.setString(8, localabrigo.getComplemento());
			stmt.setInt(9, localabrigo.getCidadeRisco().getId());
			stmt.setString(10, localabrigo.getCep());
			stmt.setBoolean(11, localabrigo.isPrecisaVoluntarios());
			stmt.setInt(12, localabrigo.getQuantidadeFamilia());
			stmt.setInt(13, localabrigo.getId());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
