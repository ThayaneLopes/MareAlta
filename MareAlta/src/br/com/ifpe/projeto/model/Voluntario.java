package br.com.ifpe.projeto.model;

public class Voluntario {
	
	private int id;
	private String cpf;
	private String nome;
	private String orgao_publico;
	private String email;
	private String telefone;
	private int id_ponto_apoio;
	private int id_local_abrigo;
	
	
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public int getId_ponto_apoio() {
		return id_ponto_apoio;
	}
	public void setId_ponto_apoio(int id_ponto_apoio) {
		this.id_ponto_apoio = id_ponto_apoio;
	}
	public int getId_local_abrigo() {
		return id_local_abrigo;
	}
	public void setId_local_abrigo(int id_local_abrigo) {
		this.id_local_abrigo = id_local_abrigo;
	}
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
	public String getOrgao_publico() {
		return orgao_publico;
	}
	public void setOrgao_publico(String orgao_publico) {
		this.orgao_publico = orgao_publico;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


}
