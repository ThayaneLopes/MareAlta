package br.com.ifpe.projeto.controller;

import java.util.List;

import javax.validation.Valid;

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
	public String cadastroComSucessoVoluntario(@Valid Voluntario voluntario) {
		VoluntarioDAO dao = new VoluntarioDAO();
		dao.inserirVoluntario(voluntario);
		return "formularios/sucesso";
	}

//	@RequestMapping("/cadastroVoluntario")
//	public String cadastroVoluntario(@Valid Voluntario voluntario, BindingResult result,Model model) {
//		
//		if (voluntario.getNome() == null || voluntario.getNome().equals("")) { 
//			return "voluntario/cadastroVoluntario"; 
//		}		
//		if (voluntario.getCpf() == null || voluntario.getCpf().equals("")) { 
//			return "voluntario/cadastroVoluntario"; 
//		}
//		if (voluntario.getEmail() == null || voluntario.getEmail().equals("")) { 
//			return "voluntario/cadastroVoluntario"; 
//		}		
//		if (voluntario.getTelefone() == null || voluntario.getTelefone().equals("")) { 
//			return "voluntario/cadastroVoluntario"; 
//		}
//		
//		
//		
//		if (result.hasErrors()) {    
//			return "forward:cadastroVoluntario"; 
//		}
//
//		PontoApoioDAO pontoapoiodao = new PontoApoioDAO();
//		List<PontoApoio> listaPontoApoio = pontoapoiodao.listar("");
//		model.addAttribute("listaPontoApoio", listaPontoApoio);
//
//		LocalAbrigoDAO localabrigodao = new LocalAbrigoDAO();
//		List<LocalAbrigo> listaLocalAbrigo = localabrigodao.listar("");
//		model.addAttribute("listaLocalAbrigo", listaLocalAbrigo);
//
//		return "formularios/cadastroVoluntario";
//	}
	
	@RequestMapping("/emergencia")
	public String emer(Model model)
	{
		PontoApoioDAO pontoapoiodao = new PontoApoioDAO();
		List<PontoApoio> listaPontoApoio = pontoapoiodao.listar("");
		model.addAttribute("listaPontoApoio", listaPontoApoio);

		LocalAbrigoDAO localabrigodao = new LocalAbrigoDAO();
		List<LocalAbrigo> listaLocalAbrigo = localabrigodao.listar("");
		model.addAttribute("listaLocalAbrigo", listaLocalAbrigo);
		return "formularios/cadastroVoluntario";
	}
	
	@RequestMapping("/buscarVoluntario")
	public String buscarVoluntarios() {
		return "buscas/buscarVoluntario";
	}

	@RequestMapping("/listarVoluntarios")
	public String listarVoluntarios(String busca, Model model) {
		if (busca == null) {
			return "buscas/buscarVoluntario";
		} else {
			VoluntarioDAO dao = new VoluntarioDAO();
			List<Voluntario> listaVoluntarios = dao.listar(busca);
			model.addAttribute("listaVoluntarios", listaVoluntarios);

			return "buscas/listarVoluntario";
		}
	}

	@RequestMapping("/alterarVoluntario")
	public String alterarVoluntario(int id, Model model) {
		VoluntarioDAO dao = new VoluntarioDAO();
		Voluntario Voluntarioselect = dao.buscarVoluntarioId(id);
		model.addAttribute("voluntario", Voluntarioselect);

		return "alterar/alterarVoluntario";
	}

	@RequestMapping("/atualizarVoluntario")
	public String atualizarVoluntario(Voluntario voluntario) {
		VoluntarioDAO dao = new VoluntarioDAO();
		dao.atualizarVoluntario(voluntario);
		return "forward:listarVoluntarios?busca=";
	}
	
	@RequestMapping("removerVoluntario") 
	/**/public String removerVoluntario(Integer voluntario, Model model) { 
		VoluntarioDAO dao = new VoluntarioDAO(); 
		dao.remover(voluntario); 
		model.addAttribute("mensagem", "Voluntário Removido com Sucesso"); 
		return "forward:listarVoluntarios?busca="; }
}