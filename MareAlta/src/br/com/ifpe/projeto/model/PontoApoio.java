package br.com.ifpe.projeto.model;

public class PontoApoio {
	
	private int id;
	private String nome;
	private String responsavel;
	private String telefone1;
	private String telefone2;
	private String estado;
	private String bairro;
	private String endereco;
	private String complemento;
	private String cidade;
	private String cep;
	private boolean ativo;
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
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
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
	