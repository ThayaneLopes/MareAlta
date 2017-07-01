package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CidadeRiscoController {

	@RequestMapping("/cadastroCidadeRisco") 
	public String cadastroCidadeRisco() { 
	return "formularios/cadastroCidadeRisco"; 	
	}	
}
