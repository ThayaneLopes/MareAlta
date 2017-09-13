package br.com.ifpe.projeto.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.ElementoJaExistenteException;
import br.com.ifpe.projeto.model.Perfil;
import br.com.ifpe.projeto.model.Voluntario;
import br.com.ifpe.projeto.model.VoluntarioDAO;
import br.com.ifpe.projeto.util.PasswordStorage;
import br.com.ifpe.projeto.util.PasswordStorage.CannotPerformOperationException;
import br.com.ifpe.projeto.util.PasswordStorage.InvalidHashException;

@Controller
public class VoluntarioController {

	@RequestMapping("/cadastroComSucessoVoluntario")
	public String cadastroComSucessoVoluntario(@Valid Voluntario voluntario, BindingResult result, Model model)
			throws CannotPerformOperationException {

		if (result.hasErrors()) {
			return "forward:cadastroVoluntario";
		}

		VoluntarioDAO dao = new VoluntarioDAO();
		try {
			Perfil perfil = Perfil.VOLUNTARIO;
			System.out.println(perfil.getvalor());
			voluntario.setPerfil(perfil);
			dao.inserirVoluntario(voluntario);
			model.addAttribute("msg", "Voluntário incluido com Sucesso!");
		} catch (ElementoJaExistenteException e) {

			model.addAttribute("mensagem", "Voluntario já existente");
		}
		return "formularios/cadastroVoluntario";
	}

	@RequestMapping("/cadastroVoluntario")
	public String cadastroVoluntario(Model model) {

		// PontoApoioDAO pontoapoiodao = new PontoApoioDAO();
		// List<PontoApoio> listaPontoApoio = pontoapoiodao.listar("");
		// model.addAttribute("listaPontoApoio", listaPontoApoio);
		//
		// LocalAbrigoDAO localabrigodao = new LocalAbrigoDAO();
		// List<LocalAbrigo> listaLocalAbrigo = localabrigodao.listar("");
		// model.addAttribute("listaLocalAbrigo", listaLocalAbrigo);

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
	public String atualizarVoluntario(Voluntario voluntario, Model model) {
		if (voluntario.getId() == 0) {
			return "forward:buscarVoluntario";
		} else {
			VoluntarioDAO dao = new VoluntarioDAO();
			dao.atualizarVoluntario(voluntario);
			model.addAttribute("mensagem", "Dados Alterados com Sucesso!");
			return "forward:listarVoluntarios?busca=";
		}
	}

	@RequestMapping("/removerVoluntario")
	public String removerVoluntario(Integer id, Model model) {
		VoluntarioDAO dao = new VoluntarioDAO();
		dao.remover(id);
		model.addAttribute("mensagem", "Voluntário Removido com Sucesso");
		return "forward:listarVoluntarios?busca=";
	}

	@RequestMapping("/login")
	public String login(String cpf, String senha,HttpSession session) throws CannotPerformOperationException, InvalidHashException {
		Voluntario voluntario;
		VoluntarioDAO dao = new VoluntarioDAO();
		voluntario = dao.buscarVoluntarioCpf(cpf);
		if (PasswordStorage.verifyPassword(senha, voluntario.getSenha())) {
			session.setAttribute("usuarioLogado", voluntario);
			return "forward:menuLogout";
		}
		else
		{
			return "forward:index";
		}
	}

	@RequestMapping("efetuarLogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "forward:index";
	}
}
