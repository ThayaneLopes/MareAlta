package br.com.ifpe.projeto.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.CidadeRisco;
import br.com.ifpe.projeto.model.CidadeRiscoDAO;
import br.com.ifpe.projeto.model.LocalAbrigo;
import br.com.ifpe.projeto.model.LocalAbrigoDAO;
import br.com.ifpe.projeto.model.Voluntario;
import br.com.ifpe.projeto.model.VoluntarioDAO;

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
		List<CidadeRisco> listaCidadeRisco = dao.listar("", "");
		model.addAttribute("listaCidadeRisco", listaCidadeRisco);

		return "formularios/cadastroLocalAbrigo";
	}

	@RequestMapping("/buscarlocalabrigo")
	public String buscarLocalAbrigo() {
		return "buscas/buscarlocalabrigo";
	}

	@RequestMapping("/listarlocalabrigo")
	public String listarProduto(String busca, Model model) {
		if (busca == null) {
			return "buscas/buscarlocalabrigo";
		} else {
			LocalAbrigoDAO dao = new LocalAbrigoDAO();
			List<LocalAbrigo> listabrigo = dao.listar(busca);
			model.addAttribute("listabrigo", listabrigo);

			return "buscas/listarlocalabrigo";
		}
	}

	@RequestMapping("removerLocalAbrigo")
	public String removerLocalAbrigo(Integer localabrigo, Model model) {
		LocalAbrigoDAO dao = new LocalAbrigoDAO();
		dao.remover(localabrigo);
		model.addAttribute("mensagem", "Local Removido com Sucesso");
		return "forward:listarLocalAbrigo?busca=";
	}

	@RequestMapping("/alterarLocalAbrigo")
	public String alterarLocalAbrigo(int id, Model model) {
		LocalAbrigoDAO dao = new LocalAbrigoDAO();
		LocalAbrigo LocalAbrigoselect = dao.buscarLocalAbrigoId(id);
		model.addAttribute("localabrigo", LocalAbrigoselect);
		CidadeRiscoDAO daoci = new CidadeRiscoDAO();
		List<CidadeRisco> listaCidadeRisco = daoci.listar("", "");
		model.addAttribute("listaCidadeRisco", listaCidadeRisco);

		return "alterar/alterarLocalAbrigo";
	}
	@RequestMapping("/atualizarLocalAbrigo")
	public String atualizarLocalAbrigo(LocalAbrigo localAbrigo, Model model) {
		LocalAbrigoDAO dao = new LocalAbrigoDAO();
		dao.atualizaLocalAbrigo(localAbrigo);
		return "forward:listarlocalabrigo?busca=";
	}
}
