package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TipoDoacaoController {

	
	@RequestMapping("/cadastroTipoDoacao") 
	public String cadastrarTipoDoacao() { 
		return "formularios/cadastroTipoDoacao"; 
	}
	
}
