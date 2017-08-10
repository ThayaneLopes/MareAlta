package br.com.ifpe.projeto.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;

@Controller
public class PontoApoioController {
	
	
	@RequestMapping("/cadastroComSucessoPontoApoio")   
	public String cadastroComSucessoPontoApoio(PontoApoio pontoapoio) { 
		PontoApoioDAO dao = new PontoApoioDAO(); 
		dao.inserirPontoApoio(pontoapoio); 
		return "formularios/sucesso"; 
	} 

	@RequestMapping("/cadastroPontoApoio") 
	public String cadastroPontoApoio(@Valid PontoApoio pontoApoio,BindingResult result, Model model) { 
		
		if (pontoApoio.getNome() == null || pontoApoio.getNome().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		} 
		if (pontoApoio.getResponsavel() == null || pontoApoio.getResponsavel().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		} 
		if (pontoApoio.getTelefone1() == null || pontoApoio.getTelefone1().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		} 
		if (pontoApoio.getBairro() == null || pontoApoio.getBairro().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		} 
		if (pontoApoio.getEndereco() == null || pontoApoio.getEndereco().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		}
		if (pontoApoio.getCep() == null || pontoApoio.getCep().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		}  
		if (pontoApoio.getHorarioFuncionamento() == null || pontoApoio.getHorarioFuncionamento().equals("")) { 
			return "pontoApoio/cadastroPontoApoio"; 
		} 
		
		
		if (result.hasErrors()) {    
			return "forward:cadastroPontoApoio"; 
		} 
		
		return "formularios/cadastroPontoApoio"; 
	}
	
}
