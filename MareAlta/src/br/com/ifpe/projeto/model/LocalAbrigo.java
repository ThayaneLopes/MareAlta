package br.com.ifpe.projeto.model;

public class LocalAbrigo {
	
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
	private boolean precisa_voluntario;
	private int quantidade_familias;
	
	
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
	public boolean isPrecisa_voluntario() {
		return precisa_voluntario;
	}
	public void setPrecisa_voluntario(boolean precisa_voluntario) {
		this.precisa_voluntario = precisa_voluntario;
	}
	public int getQuantidade_familias() {
		return quantidade_familias;
	}
	public void setQuantidade_familias(int quantidade_familias) {
		this.quantidade_familias = quantidade_familias;
	}


}
