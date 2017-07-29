package br.com.ifpe.projeto.model;

public class Voluntario {
	
	private int id;
	private String cpf;
	private String nome;
	private String orgao_publico;
	private String email;
	private String telefone;
	private PontoApoio pontoApoio;
	private LocalAbrigo localAbrigo;
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
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public PontoApoio getPontoApoio() {
		return pontoApoio;
	}
	public void setPontoApoio(PontoApoio pontoApoio) {
		this.pontoApoio = pontoApoio;
	}
	public LocalAbrigo getLocalAbrigo() {
		return localAbrigo;
	}
	public void setLocalAbrigo(LocalAbrigo localAbrigo) {
		this.localAbrigo = localAbrigo;
	}

}
	
	