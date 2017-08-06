package br.com.ifpe.projeto.controller;

import java.sql.SQLException;
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

		return "forward:listarCidadeRisco";
	}

	@RequestMapping("/removerCidade")
	public String removerCidadeRisco(int id, Model model) throws SQLException 
	{
		CidadeRiscoDAO dao = new CidadeRiscoDAO();
		if(dao.removerCidade(id))
		{
			model.addAttribute("mensagem", "Cidade Excluida com Sucesso");
			
		}
		else
		{
			model.addAttribute("mensagem", "A cidade não pode ser excluida");
		}
		return "forward:listarcidade?busca=&situacaoRisco=";
	}
}
