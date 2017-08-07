package br.com.ifpe.projeto.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String cadastrarTipoDoacao(@Valid TipoDoacao tipoDoacao,BindingResult result, Model model) {
		
		if (tipoDoacao.getNome() == null || tipoDoacao.getNome().equals("")) { 
			return "tipoDoacao/cadastroTipoDoacao"; 
		} 
		
		
		if (result.hasErrors()) {    
			return "forward:cadastroTipoDoacao"; 
		} 
		
		return "formularios/cadastroTipoDoacao"; 
	}
	
}
