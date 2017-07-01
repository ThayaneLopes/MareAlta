package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.Voluntario;
import br.com.ifpe.projeto.model.VoluntarioDAO;

@Controller
public class VoluntarioController {
	
	
	@RequestMapping("/cadastroComSucessoVoluntario")   
	public String cadastroComSucessoVoluntario(Voluntario voluntario) { 
		VoluntarioDAO dao = new VoluntarioDAO(); 
		dao.inserirVoluntario(voluntario); 
		return "formularios/sucesso"; 
	} 
	
	@RequestMapping("/cadastroVoluntario") 
	public String cadastroVoluntario() { 
		return "formularios/cadastroVoluntario"; 
	}
}
