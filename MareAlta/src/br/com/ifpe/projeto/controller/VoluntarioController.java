package br.com.ifpe.projeto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.LocalAbrigo;
import br.com.ifpe.projeto.model.LocalAbrigoDAO;
import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;
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
	public String cadastroVoluntario(Model model) { 
		
		PontoApoioDAO pontoapoiodao = new PontoApoioDAO();
		List<PontoApoio> listaPontoApoio = pontoapoiodao.listar("");
		model.addAttribute("listaPontoApoio", listaPontoApoio);
		
		LocalAbrigoDAO localabrigodao = new LocalAbrigoDAO();
		List<LocalAbrigo> listaLocalAbrigo = localabrigodao.listar("");
		model.addAttribute("listaLocalAbrigo", listaLocalAbrigo);
		
		return "formularios/cadastroVoluntario"; 
	}



	@RequestMapping("/buscarVoluntario")
	public String buscarVoluntarios()
	{
		return "buscas/buscarVoluntario";
	}
		
		@RequestMapping("/listarVoluntarios")
	    public String listarVoluntarios(String busca,Model model) {
		if(busca == null)
		{
			return "buscas/buscarVoluntario";
		}
		else
		{
		VoluntarioDAO dao = new VoluntarioDAO();
		List<Voluntario> listaVoluntarios = dao.listar(busca);
		model.addAttribute("listaVoluntarios", listaVoluntarios);
		
		return "buscas/listarVoluntario";
		}
	    }
}