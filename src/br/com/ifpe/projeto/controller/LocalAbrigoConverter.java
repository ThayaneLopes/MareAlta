package br.com.ifpe.projeto.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.ifpe.projeto.model.LocalAbrigo;
import br.com.ifpe.projeto.model.LocalAbrigoDAO;


public class LocalAbrigoConverter implements Converter<String, LocalAbrigo> {

	@Override
	public LocalAbrigo convert(String localAbrigo) {
		if(localAbrigo != null && !localAbrigo.isEmpty())
		{
		LocalAbrigoDAO dao = new LocalAbrigoDAO();
		 return dao.buscarLocalAbrigoId((Integer.parseInt(localAbrigo)));
		}
		else
		{
			return null;
		}
				}

}
