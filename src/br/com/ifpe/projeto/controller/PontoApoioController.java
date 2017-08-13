package br.com.ifpe.projeto.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.ElementoJaExistenteException;
import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;

@Controller
public class PontoApoioController {

	@RequestMapping("/cadastroComSucessoPontoApoio")
	public String cadastroComSucessoPontoApoio(@Valid PontoApoio pontoapoio, BindingResult result, Model model) {
		
		if (result.hasErrors()) {
			return "forward:cadastroPontoApoio";
		}
		
		PontoApoioDAO dao = new PontoApoioDAO();
		try {
			dao.inserirPontoApoio(pontoapoio);
		} catch (ElementoJaExistenteException e) {
			model.addAttribute("mensagem", "Ponto de Apoio ja existente");
			return "formularios/cadastroPontoApoio";
		}
		
		return "formularios/sucesso";
	}

	@RequestMapping("/cadastroPontoApoio")
	public String cadastroPontoApoio() {

		
		return "formularios/cadastroPontoApoio";
	}

}
