package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LocalAbrigoController {

	@RequestMapping("/cadastroLocalAbrigo") 
	public String cadastroLocalAbrigo() { 
		return "formularios/cadastroLocalAbrigo"; 
	}
	
}
