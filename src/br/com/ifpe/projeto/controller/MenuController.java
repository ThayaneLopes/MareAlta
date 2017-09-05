package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {

	@RequestMapping("/menuCadastro")
	public String abrirCadastro(){
		return "comum/cadastro";
	}
	
	@RequestMapping("/menuBusca")
	public String abrirBusca(){
		return "comum/buscas";
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
		return "comum/menuLogout";
	}	
}
