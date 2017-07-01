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
	private String horario_funcionamento;
	private boolean faz_coleta;
	private boolean faz_triagem;
	private boolean precisa_voluntarios;
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
	public String getHorario_funcionamento() {
		return horario_funcionamento;
	}
	public void setHorario_funcionamento(String horario_funcionamento) {
		this.horario_funcionamento = horario_funcionamento;
	}
	public boolean isFaz_coleta() {
		return faz_coleta;
	}
	public void setFaz_coleta(boolean faz_coleta) {
		this.faz_coleta = faz_coleta;
	}
	public boolean isFaz_triagem() {
		return faz_triagem;
	}
	public void setFaz_triagem(boolean faz_triagem) {
		this.faz_triagem = faz_triagem;
	}
	public boolean isPrecisa_voluntarios() {
		return precisa_voluntarios;
	}
	public void setPrecisa_voluntarios(boolean precisa_voluntarios) {
		this.precisa_voluntarios = precisa_voluntarios;
	}

	
}
