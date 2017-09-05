package br.com.ifpe.projeto.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.ifpe.projeto.model.CidadeRisco;
import br.com.ifpe.projeto.model.CidadeRiscoDAO;

public class CidadeRiscoConverter implements Converter<String, CidadeRisco> {

	@Override
	public CidadeRisco convert(String id) 
	{

		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		return dao.buscarPorId(Integer.parseInt(id));
	}

}
