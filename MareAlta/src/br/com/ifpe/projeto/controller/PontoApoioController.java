package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PontoApoioController {

	@RequestMapping("/cadastroPontoApoio") 
	public String cadastroPontoColeta() { 
		return "formularios/cadastroPontoApoio"; 
	}
	

}
