package br.com.ifpe.projeto.model;

public class Voluntario {
	
	private int id;
	private String cpf;
	private String nome;
	private String orgaoPublico;
	private String email;
	private String telefone;
	private Integer idPontoApoio;
	private Integer idLocalAbrigo;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getOrgaoPublico() {
		return orgaoPublico;
	}
	public void setOrgaoPublico(String orgaoPublico) {
		this.orgaoPublico = orgaoPublico;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public Integer getIdPontoApoio() {
		return idPontoApoio;
	}
	public void setIdPontoApoio(Integer idPontoApoio) {
		this.idPontoApoio = idPontoApoio;
	}
	public Integer getIdLocalAbrigo() {
		return idLocalAbrigo;
	}
	public void setIdLocalAbrigo(Integer idLocalAbrigo) {
		this.idLocalAbrigo = idLocalAbrigo;
	}
}
	
	