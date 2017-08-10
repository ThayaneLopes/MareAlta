package br.com.ifpe.projeto.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class CidadeRisco {
	
	private int id;
	@NotEmpty(message="O nome deve ser preenchido") 
	@Size(min = 10, max = 150, message="O nome deve deve ter no m�nimo 10 caracteres")
	private String nome;
	@NotEmpty(message="A região deve ser preenchida") 
	@Size(min = 10, max = 100, message="A regi�o deve deve ter no m�nimo 10 caracteres")
	private String regiao;
	private String situacaoRisco;
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
	public String getRegiao() {
		return regiao;
	}
	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}
	public String getSituacaoRisco() {
		return situacaoRisco;
	}
	public void setSituacaoRisco(String situacaoRisco) {
		this.situacaoRisco= situacaoRisco;//
	}
}
	