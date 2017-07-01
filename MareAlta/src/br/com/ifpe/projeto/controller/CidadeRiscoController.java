package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.CidadeRisco;
import br.com.ifpe.projeto.model.CidadeRiscoDAO;

@Controller
public class CidadeRiscoController {

	@RequestMapping("/cadastroComSucessoCidadeRisco")   
	public String cadastroComSucessoCidadeRisco(CidadeRisco cidaderisco) { 
		CidadeRiscoDAO dao = new CidadeRiscoDAO(); 
		dao.inserirCidadeRisco(cidaderisco); 
		return "formularios/sucesso"; 
	} 
	
	@RequestMapping("/cadastroCidadeRisco") 
	public String cadastroCidadeRisco() { 
	return "formularios/cadastroCidadeRisco"; 	
	}	
}
