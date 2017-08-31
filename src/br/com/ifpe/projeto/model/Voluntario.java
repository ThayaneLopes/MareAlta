package br.com.ifpe.projeto.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Voluntario {
	
	private int id;
	@NotEmpty(message="O CPF deve ser preenchido") 
	@Size(min = 11, max = 14, message="CPF deve ter no mínimo 11 caracteres")
	private String cpf;
	@NotEmpty(message="O nome deve ser preenchido") 
	@Size(min = 10, max = 150, message="Nome deve ter no mínimo 10 caracteres")
	private String nome;
	private String orgao_publico;
	@NotEmpty(message="O e-mail deve ser preenchido") 
	@Size(min = 10, max = 150, message="E-mail deve ser preenchido corretamente")
	private String email;
	@NotEmpty(message="O telefone deve ser preenchido") 
	@Size(min = 11, max = 15, message="Telefone deve ter no mínimo 11 caracteres")
	private String telefone;
	private PontoApoio pontoApoio;
	private LocalAbrigo localAbrigo;
	private String senha;
	private String perfil;
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
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
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

}
	
	