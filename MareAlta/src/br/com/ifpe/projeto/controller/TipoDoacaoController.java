package br.com.ifpe.projeto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.TipoDoacao;
import br.com.ifpe.projeto.model.TipoDoacaoDAO;

@Controller
public class TipoDoacaoController {

	@RequestMapping("/cadastroComSucessoTipoDoacao")   
	public String cadastroComSucessoTipoDoacao(TipoDoacao tipodoacao) { 
		TipoDoacaoDAO dao = new TipoDoacaoDAO(); 
		dao.inserirTipoDoacao(tipodoacao); 
		return "formularios/sucesso"; 
	} 
	
	@RequestMapping("/cadastroTipoDoacao") 
	public String cadastrarTipoDoacao() { 
		return "formularios/cadastroTipoDoacao"; 
	}
	
}
