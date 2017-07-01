package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.LocalAbrigo;
import br.com.ifpe.projeto.model.LocalAbrigoDAO;


@Controller
public class LocalAbrigoController {

	@RequestMapping("/cadastroComSucessoLocalAbrigo")   
	public String cadastroComSucessoLocalAbrigo(LocalAbrigo localabrigo) { 
		LocalAbrigoDAO dao = new LocalAbrigoDAO(); 
		dao.inserirLocalAbrigo(localabrigo); 
		return "formularios/sucesso"; 
	} 
	
	@RequestMapping("/cadastroLocalAbrigo") 
	public String cadastroLocalAbrigo() { 
		return "formularios/cadastroLocalAbrigo"; 
	}
	
}
