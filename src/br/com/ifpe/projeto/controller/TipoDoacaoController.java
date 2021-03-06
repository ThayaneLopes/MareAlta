package br.com.ifpe.projeto.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.ElementoJaExistenteException;
import br.com.ifpe.projeto.model.TipoDoacao;
import br.com.ifpe.projeto.model.TipoDoacaoDAO;

@Controller
public class TipoDoacaoController {

	@RequestMapping("/cadastroComSucessoTipoDoacao")
	public String cadastroComSucessoTipoDoacao(@Valid TipoDoacao tipoDoacao, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:cadastroTipoDoacao";
		} else {
			TipoDoacaoDAO dao = new TipoDoacaoDAO();
			try {
				dao.inserirTipoDoacao(tipoDoacao);
				model.addAttribute("msg", "Tipo de Doa��o incluido com Sucesso!");
			} catch (ElementoJaExistenteException e) {
				model.addAttribute("mensagem", "J� Existe este tipo de doação");
				return "formularios/cadastroTipoDoacao";
			}
		}
		return "formularios/cadastroTipoDoacao";
	}

	@RequestMapping("/cadastroTipoDoacao")
	public String cadastrarTipoDoacao() {

		return "formularios/cadastroTipoDoacao";
	}

	@RequestMapping("/buscartipodedoacao")
	public String buscartipodoacao() {
		return "buscas/buscartipodoacao";
	}

	@RequestMapping("/listartipodoacao")
	public String listarProduto(String busca, Model model) {
		if (busca == null) {
			return "buscas/buscartipodoacao";
		} else {
			TipoDoacaoDAO dao = new TipoDoacaoDAO();
			List<TipoDoacao> listatipodoacao = dao.listar(busca);
			model.addAttribute("listatipodoacao", listatipodoacao);

			return "buscas/listartipodoacao";
		}
	}

	@RequestMapping("/alterartipodoacaoform")
	public String alterartipodoacaoform(int id, Model model) {
		TipoDoacaoDAO dao = new TipoDoacaoDAO();
		TipoDoacao tipodoacao = dao.buscartipodoacaoporId(id);
		model.addAttribute("tipodoacao", tipodoacao);

		return "alterar/alterarTipoDoacao";
	}

	@RequestMapping("/atualizarTipoDoacao")
	public String atualizarTipoDoacao(TipoDoacao tipoDoacao, Model model) {
		TipoDoacaoDAO dao = new TipoDoacaoDAO();
		dao.atualizarTipoDoacao(tipoDoacao);
		model.addAttribute("mensagem", "Tipo de Doa��o Alterado com Sucesso!");
		return "forward:listartipodoacao?busca=";
	}

	@RequestMapping("/removertipodoacao")
	public String removertipodoacao(int id) {
		TipoDoacaoDAO dao = new TipoDoacaoDAO();
		dao.removertipodoacao(id);
		return "forward:listartipodoacao?busca=";
	}

	@RequestMapping("/listainputsdoacao")
	public String listainputsdoacao(Model model) {
		TipoDoacaoDAO dao = new TipoDoacaoDAO();
		List<TipoDoacao> listatipodoacao = dao.listarativos();
		model.addAttribute("listatipodoacao", listatipodoacao);

		return "buscas/listartipodoacaoativa";
	}
	
	@RequestMapping("/atribuirtipodoacao")
	public String atribuirtipodoacao(int id,Model model)
	{
		TipoDoacaoDAO dao = new TipoDoacaoDAO();
		List<TipoDoacao> listatipodoacao = dao.listarativos();
		model.addAttribute("listatipodoacao", listatipodoacao);
		model.addAttribute("id", id);
		return "formularios/atribuirtipodoacaopo";
	}
	
	@RequestMapping("/atribuiapontoapoio")
	public String atribuiapontoapoio(int[] tipodoacao , int idpontoapoio ,Model model) throws ElementoJaExistenteException
	{
		TipoDoacaoDAO dao = new TipoDoacaoDAO();	
		dao.atribuirItensAceitosPontoapoio(tipodoacao,idpontoapoio);
		
		return atribuirtipodoacao(idpontoapoio ,model);
		
	}
	
}