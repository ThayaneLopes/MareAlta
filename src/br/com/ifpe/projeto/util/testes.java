package br.com.ifpe.projeto.util;

import br.com.ifpe.projeto.util.PasswordStorage.CannotPerformOperationException;

public class testes {

	public static void main(String[] args) throws CannotPerformOperationException {
		String senha = "admin";
		System.out.println(PasswordStorage.createHash(senha));

	}

}
