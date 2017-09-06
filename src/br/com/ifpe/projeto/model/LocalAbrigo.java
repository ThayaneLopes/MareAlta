package br.com.ifpe.projeto.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class LocalAbrigo {
	
	private int id;
	@NotEmpty(message="O nome deve ser preenchido") 
	@Size(min = 10, max = 150, message="Nome deve ter no mínimo 10 caracteres")
	private String nome;
	@NotEmpty(message="O responsável deve ser preenchido") 
	@Size(min = 10, max = 150, message="Responsável deve ter no mínimo 10 caracteres")
	private String responsavel;
	@NotEmpty(message="O telefone deve ser preenchido") 
	@Size(min = 11, max = 15, message="Telefone deve ter no mínimo 11 caracteres")
	private String telefone1;
	private String telefone2;
	private String estado;
	@NotEmpty(message="O bairro deve ser preenchido") 
	@Size(min = 3, max = 50, message="Bairro deve ter no mínimo 3 caracteres")
	private String bairro;
	@NotEmpty(message="O endereço deve ser preenchido") 
	@Size(min = 5, max = 150, message="Endereço deve ter no mínimo 10 caracteres")
	private String ruaAvenida;
	private String complemento;
	private CidadeRisco cidadeRisco;
	@NotEmpty(message="O CEP deve ser preenchido") 
	@Size(min = 8, max = 10, message="CEP deve ter no mínimo 8 caracteres")
	private String cep;
	private boolean precisaVoluntarios;
	@NotNull(message="O campo quantidade de familias deve ser preenchido") 
	private Integer quantidadeFamilia;
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
	public String getRuaAvenida() {
		return this.ruaAvenida;
	}
	public void setRuaAvenida(String ruaAvenida) {
		this.ruaAvenida = ruaAvenida;
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
	public boolean isPrecisaVoluntarios() {
		return precisaVoluntarios;
	}
	public void setPrecisaVoluntarios(boolean precisaVoluntarios) {
		this.precisaVoluntarios = precisaVoluntarios;
	}
	public Integer getQuantidadeFamilia() {
		return quantidadeFamilia;
	}
	public void setQuantidadeFamilia(Integer quantidadeFamilia) {
		this.quantidadeFamilia = quantidadeFamilia;
	}
}
	