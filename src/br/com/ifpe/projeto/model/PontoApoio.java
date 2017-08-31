package br.com.ifpe.projeto.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class PontoApoio {
	
	private int id;
	@NotEmpty(message="O nome deve ser preenchido") 
	@Size(min = 5, max = 150, message="Nome deve ter no minimo 10 caracteres")
	private String nome;
	@NotEmpty(message="O responsavel deve ser preenchido") 
	@Size(min = 10, max = 150, message="Responsavel deve ter no minimo 10 caracteres")
	private String responsavel;
	@NotEmpty(message="O telefone deve ser preenchido") 
	@Size(min = 11, max = 15, message="Telefone deve ter no minimo 11 caracteres")
	private String telefone1;
	private String telefone2;
	private String estado;
	@NotEmpty(message="O bairro deve ser preenchido") 
	@Size(min = 3, max = 50, message="Bairro deve ter no maximo 3 caracteres")
	private String bairro;
	@NotEmpty(message="O endereco deve ser preenchido") 
	@Size(min = 10, max = 150, message="endereco deve ter no maximo 10 caracteres")
	private String endereco;
	private String complemento;
	private CidadeRisco cidadeRisco;
	@NotEmpty(message="O CEP deve ser preenchido") 
	@Size(min = 8, max = 10, message="CEP deve ter no mnimo 8 caracteres")
	private String cep;
	private boolean ativo;
	@NotEmpty(message="O Horáriohorarios de Funcionamento deve ser preenchido") 
	@Size(min = 8,message="horario de Funcionamento deve ter no maximo 8 caracteres")
	private String horarioFuncionamento;
	private boolean fazColeta;
	private boolean fazTriagem;
	private boolean precisaVoluntarios;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getResponsavel() {
		return responsavel;
	}
	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}
	public String getTelefone1() {
		return telefone1;
	}
	public void setTelefone1(String telefone1) {
		this.telefone1 = telefone1;
	}
	public String getTelefone2() {
		return telefone2;
	}
	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public CidadeRisco getCidadeRisco() {
		return cidadeRisco;
	}
	public void setCidadeRisco(CidadeRisco cidadeRisco) {
		this.cidadeRisco = cidadeRisco;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public boolean isAtivo() {
		return ativo;
	}
	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
	public String getHorarioFuncionamento() {
		return horarioFuncionamento;
	}
	public void setHorarioFuncionamento(String horarioFuncionamento) {
		this.horarioFuncionamento = horarioFuncionamento;
	}
	public boolean isFazColeta() {
		return fazColeta;
	}
	public void setFazColeta(boolean fazColeta) {
		this.fazColeta = fazColeta;
	}
	public boolean isFazTriagem() {
		return fazTriagem;
	}
	public void setFazTriagem(boolean fazTriagem) {
		this.fazTriagem = fazTriagem;
	}
	public boolean isPrecisaVoluntarios() {
		return precisaVoluntarios;
	}
	public void setPrecisaVoluntarios(boolean precisaVoluntarios) {
		this.precisaVoluntarios = precisaVoluntarios;
	}
}
	