package br.com.ifpe.projeto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.CidadeRisco;
import br.com.ifpe.projeto.model.CidadeRiscoDAO;

@Controller
public class CidadeRiscoController {
	
	@RequestMapping("/cadastroCidadeRisco") 
	public String cadastroCidadeRisco() { 
	return "formularios/cadastroCidadeRisco"; 	
	}

	@RequestMapping("/cadastroComSucessoCidadeRisco")   
	public String cadastroComSucessoCidadeRisco(CidadeRisco cidaderisco) { 
		CidadeRiscoDAO dao = new CidadeRiscoDAO(); 
		dao.inserirCidadeRisco(cidaderisco); 
		return "formularios/sucesso"; 
	}
	
	@RequestMapping("/listarcidadesrisco")
	public String listarcidade()
	{
		return "formularios/listarCidades";
	}
		@RequestMapping("/listarcidade")
	    public String listarProduto(Model model) {

		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		List<CidadeRisco> listacidades = dao.listar();
		model.addAttribute("listacidades", listacidades);
		
		return "formularios/listarCidades";
	    }
}
