package br.com.ifpe.projeto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.CidadeRisco;
import br.com.ifpe.projeto.model.CidadeRiscoDAO;
import br.com.ifpe.projeto.model.LocalAbrigo;
import br.com.ifpe.projeto.model.LocalAbrigoDAO;


@Controller
public class LocalAbrigoController {

	@RequestMapping("/cadastroComSucessoLocalAbrigo")   
	public String cadastroComSucessoLocalAbrigo(LocalAbrigo localabrigo) { 
		LocalAbrigoDAO dao = new LocalAbrigoDAO(); 
		dao.inserirLocalAbrigo(localabrigo); 
		return "formularios/sucesso"; 
	} 
	
	@RequestMapping("/cadastroLocalAbrigo") 
	public String cadastroLocalAbrigo(Model model) { 
		
		
		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		List<CidadeRisco> listaCidadeRisco = dao.listar("","");
		model.addAttribute("listaCidadeRisco", listaCidadeRisco);
		
		return "formularios/cadastroLocalAbrigo"; 
	}
	
	@RequestMapping("/buscarlocalabrigo")
	public String buscarLocalAbrigo()
	{
		return "buscas/buscarlocalabrigo";
	}
	
	@RequestMapping("/listarlocalabrigo")
    public String listarProduto(String busca,Model model) {
	if(busca == null)
	{
		return "buscas/buscarlocalabrigo";
	}
	else
	{
	LocalAbrigoDAO dao = new LocalAbrigoDAO();
	List<LocalAbrigo> listabrigo = dao.listar(busca);
	model.addAttribute("listabrigo", listabrigo);
	
	return "buscas/listarlocalabrigo";
	}
    }
}
