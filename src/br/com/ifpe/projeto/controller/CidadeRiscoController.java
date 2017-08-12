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

@Controller
public class CidadeRiscoController {

	@RequestMapping("/cadastroCidadeRisco")
	public String cadastroCidadeRisco(@Valid CidadeRisco cidadeRisco, BindingResult result, Model model) {

		if (cidadeRisco.getNome() == null || cidadeRisco.getNome().equals("")) {
			return "cidadeRisco/cadastroCidadeRisco";
		}
		if (cidadeRisco.getRegiao() == null || cidadeRisco.getRegiao().equals("")) {
			return "cidadeRisco/cadastroCidadeRisco";
		}
		if (cidadeRisco.getSituacaoRisco() == null || cidadeRisco.getSituacaoRisco().equals("")) {
			return "cidadeRisco/cadastroCidadeRisco";
		}

		if (result.hasErrors()) {
			return "forward:cadastroCidadeRisco";
		}

		return "formularios/cadastroCidadeRisco";
	}

	@RequestMapping("/cadastroComSucessoCidadeRisco")
	public String cadastroComSucessoCidadeRisco(CidadeRisco cidaderisco, Model model) {
		if (cidaderisco.getNome() != null) {
			CidadeRiscoDAO dao = new CidadeRiscoDAO();

			try {
				dao.inserirCidadeRisco(cidaderisco);
				return "formularios/sucesso";
			} catch (ElementoJaExistenteException e) {
				model.addAttribute("mensagem", "Cidade já existente");
				return "formularios/cadastroCidadeRisco";
			}
		} else {
			model.addAttribute("mensagem", "Dados não informados");
			return "formularios/cadastroCidadeRisco";
		}

	}

	@RequestMapping("/buscarcidades")
	public String buscarCidades() {
		return "buscas/buscarCidade";
	}

	@RequestMapping("/listarcidade")
	public String listarProduto(String busca, String situacaoRisco, Model model) {
		if (busca == null) {
			return "buscas/buscarCidade";
		} else {
			CidadeRiscoDAO dao = new CidadeRiscoDAO();
			List<CidadeRisco> listacidades = dao.listar(busca, situacaoRisco);
			model.addAttribute("listacidades", listacidades);

			return "buscas/listarCidades";
		}
	}
	@RequestMapping("/listartodas")
	public String listartudo(Model model)
	{
		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		List<CidadeRisco> listacidades = dao.listartodas();
		model.addAttribute("listacidades", listacidades);

		return "buscas/listarCidades";
	}

	@RequestMapping("exibirAlterarCidadeRisco")
	public String exibirAlterarCidadeRisco(CidadeRisco cidaderisco, Model model) {

		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		CidadeRisco cidadeRiscoCompleto = dao.buscarPorId(cidaderisco.getId());
		model.addAttribute("cidaderisco", cidadeRiscoCompleto);

		return "alterar/alterarCidadeRisco";
	}

	@RequestMapping("/alterarCidadeRisco")
	public String alterarCidadeRisco(CidadeRisco cidaderisco, Model model) {

		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		dao.alterar(cidaderisco);
		model.addAttribute("mensagem", "Cidade Alterada com Sucesso!");

		return "forward:listartodas";

	}

	@RequestMapping("/removerCidade")
	public String removerCidadeRisco(int id, Model model) throws SQLException {
		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		if (dao.removerCidade(id)) {
			model.addAttribute("mensagem", "Cidade Excluida com Sucesso");

		} else {
			model.addAttribute("mensagem", "A cidade não pode ser excluida");
		}
		return "forward:listarcidade?busca=&situacaoRisco=";
	}
}
