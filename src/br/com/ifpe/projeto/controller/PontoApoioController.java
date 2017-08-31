package br.com.ifpe.projeto.controller;

import java.sql.SQLException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.CidadeRisco;
import br.com.ifpe.projeto.model.CidadeRiscoDAO;
import br.com.ifpe.projeto.model.ElementoJaExistenteException;
import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;

@Controller
public class PontoApoioController {

	@RequestMapping("/cadastroComSucessoPontoApoio")
	public String cadastroComSucessoPontoApoio(@Valid PontoApoio pontoapoio, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:cadastroPontoApoio";
		} else {
			PontoApoioDAO dao = new PontoApoioDAO();
			try {
				dao.inserirPontoApoio(pontoapoio);
				model.addAttribute("msg", "Ponto de Apoio incluido com Sucesso!");
			} catch (ElementoJaExistenteException e) {
				model.addAttribute("mensagem", "Ponto de Apoio Já existente");
			}

			return "formularios/sucesso";
		}
	}

	@RequestMapping("/cadastroPontoApoio")
	public String cadastroPontoApoio(Model model) {
		
		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		List<CidadeRisco> listaCidadeRisco = dao.listar("", "");
		model.addAttribute("listaCidadeRisco", listaCidadeRisco);

		return "formularios/cadastroPontoApoio";
	}

	@RequestMapping("/buscarpontoapoio")
	public String buscarPontoApoio(Model model) {
		PontoApoioDAO dao = new PontoApoioDAO();
		List<PontoApoio> listadePontos = dao.listarcidades();
		model.addAttribute("listapoio", listadePontos);
		return "buscas/buscarPontoApoio";
	}

	@RequestMapping("/listapontosapoio")
	public String listarpontosdeapoio(String busca, String cidade, Model model) {
		if (busca == null) {
			return "buscas/buscarPontoApoio";
		} else {
			PontoApoioDAO dao = new PontoApoioDAO();
			List<PontoApoio> listadePontos = dao.listarcomfiltro(busca, cidade);
			model.addAttribute("listapoio", listadePontos);
			return "buscas/listarpontosapoio";
		}

	}

	@RequestMapping("/alterarpontoapoio")
	public String alterarpontoapoio(int id, Model model) {
		PontoApoioDAO dao = new PontoApoioDAO();
		PontoApoio pontoapoio = dao.buscarPontoApoioPorID(id);
		model.addAttribute("pontoapoio", pontoapoio);
		return "alterar/alterarPontoApoio";
	}

	@RequestMapping("/atualizarpontoapoio")
	public String atualizarPontoApoio(PontoApoio pontoApoio, Model model) {
		PontoApoioDAO dao = new PontoApoioDAO();
		dao.atualizarPontoapoio(pontoApoio);
		model.addAttribute("mensagem", "Ponto de Apoio alterado com sucesso");
		return "forward:listapontosapoio?busca=";
	}

	@RequestMapping("/removerPontoApoio")
	public String removerPontoApoio(int id, Model model) throws SQLException {
		PontoApoioDAO dao = new PontoApoioDAO();
		dao.removerpontoApoio(id);
		model.addAttribute("mensagem", "Ponto de Apoio Removido com Sucesso");
		return "forward:listapontosapoio?busca=";

	}
}
