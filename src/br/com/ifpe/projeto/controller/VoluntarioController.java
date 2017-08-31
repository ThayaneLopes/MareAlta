package br.com.ifpe.projeto.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.projeto.model.ElementoJaExistenteException;
import br.com.ifpe.projeto.model.LocalAbrigo;
import br.com.ifpe.projeto.model.LocalAbrigoDAO;
import br.com.ifpe.projeto.model.Perfis;
import br.com.ifpe.projeto.model.PontoApoio;
import br.com.ifpe.projeto.model.PontoApoioDAO;
import br.com.ifpe.projeto.model.Voluntario;
import br.com.ifpe.projeto.model.VoluntarioDAO;
import br.com.ifpe.projeto.util.PasswordStorage;
import br.com.ifpe.projeto.util.PasswordStorage.CannotPerformOperationException;
import br.com.ifpe.projeto.util.PasswordStorage.InvalidHashException;

@Controller
public class VoluntarioController {

	@RequestMapping("/cadastroComSucessoVoluntario")
	public String cadastroComSucessoVoluntario(@Valid Voluntario voluntario, BindingResult result, Model model) throws CannotPerformOperationException {

		if (result.hasErrors()) {
			return "forward:cadastroVoluntario";
		}

		VoluntarioDAO dao = new VoluntarioDAO();
		try {
			Perfis perfil = Perfis.VOLUNTARIO;
			System.out.println(perfil.getvalor());
			voluntario.setPerfil(perfil.toString());
			dao.inserirVoluntario(voluntario);
		} catch (ElementoJaExistenteException e) {

			model.addAttribute("mensagem", "Voluntario já existente");
		}
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
		if(voluntario.getId()==0)
		{
			return "forward:buscarVoluntario";
		}
		else
		{
		VoluntarioDAO dao = new VoluntarioDAO();
		dao.atualizarVoluntario(voluntario);
		model.addAttribute("mensagem", "Dados Alterados com Sucesso!");
		return "forward:listarVoluntarios?busca=";
		}
	}

	@RequestMapping("/removerVoluntario")
	public String removerVoluntario(Integer voluntario, Model model) {
		VoluntarioDAO dao = new VoluntarioDAO();
		dao.remover(voluntario);
		model.addAttribute("mensagem", "Voluntário Removido com Sucesso");
		return "forward:listarVoluntarios?busca=";
	}
	@RequestMapping("/login")
	public void login(String cpf, String senha) throws CannotPerformOperationException, InvalidHashException
	{
		Voluntario voluntario;
		VoluntarioDAO dao = new VoluntarioDAO();
		voluntario = dao.buscarVoluntarioCpf(cpf);
		if(PasswordStorage.verifyPassword(senha, voluntario.getSenha()))
		{
			System.out.println("senha correta");
		}
		else
		{
			System.out.println("senha incorreta");
		}
	}
}