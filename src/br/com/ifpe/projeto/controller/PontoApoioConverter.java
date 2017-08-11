package br.com.ifpe.projeto.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;

public class PontoApoioConverter implements Converter<String, PontoApoio> {

	@Override
	public PontoApoio convert(String pontoApoio) {
		if(pontoApoio != null && !pontoApoio.isEmpty())
		{
		PontoApoioDAO dao = new PontoApoioDAO();
		 return dao.buscarPontoApoioPorID((Integer.parseInt(pontoApoio)));
		}
		else	
		{
			return null;
		}
				}

}
