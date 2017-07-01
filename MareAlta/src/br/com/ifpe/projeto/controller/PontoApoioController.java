package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;

@Controller
public class PontoApoioController {
	
	
	@RequestMapping("/cadastroComSucessoPontoApoio")   
	public String cadastroComSucessoPontoApoio(PontoApoio pontoapoio) { 
		PontoApoioDAO dao = new PontoApoioDAO(); 
		dao.inserirPontoApoio(pontoapoio); 
		return "formularios/sucesso"; 
	} 

	@RequestMapping("/cadastroPontoApoio") 
	public String cadastroPontoColeta() { 
		return "formularios/cadastroPontoApoio"; 
	}
	

}
