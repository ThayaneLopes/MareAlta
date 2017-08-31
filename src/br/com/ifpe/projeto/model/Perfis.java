package br.com.ifpe.projeto.model;

public enum Perfis {
	ADMINISTRADOR(1),VOLUNTARIO(2),RESPONSAVELLA(3),RESPONSAVELPA(4);
	
	private int val;
	private Perfis (int valor)
	{
		this.val = valor;
	}
	
	public int getvalor()
	{
		return this.val;
	}
}
