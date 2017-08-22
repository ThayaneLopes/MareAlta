package br.com.ifpe.projeto.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class TipoDoacao {
	
	private int id;
	@NotEmpty(message="O nome deve ser preenchido") 
	@Size(min = 3, max = 150, message="Nome deve ter no mínimo 3 caracteres")
	private String nome;
	private boolean ativo;
	
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
	public boolean isAtivo() {
		return ativo;
	}
	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
	

}
