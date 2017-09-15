package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {

	@RequestMapping("/missao")
	public String missao(){
		return "comum/missao";
	}
		
	@RequestMapping("/index")
	public String index(){
		return "comum/index";
	}
	
	@RequestMapping("/colabore")
	public String colabore(){
		return "comum/colabore";
	}
	@RequestMapping("/menuLogout")
	public String menuLogout(){
		return "logout/menuLogout";
	}	
	
	@RequestMapping("/acesso")
	public String acesso(){
		return "comum/login";
	}	
}
