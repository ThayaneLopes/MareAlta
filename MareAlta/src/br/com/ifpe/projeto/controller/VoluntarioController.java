package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoluntarioController {
	@RequestMapping("/cadastroVoluntario") 
	public String cadastroVoluntario() { 
		return "formularios/cadastroVoluntario"; 
	}
}
