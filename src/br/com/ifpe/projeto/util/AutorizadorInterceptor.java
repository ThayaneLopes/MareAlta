package br.com.ifpe.projeto.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		String uri = request.getRequestURI();
		if ( uri.contains("img") || uri.contains("js")
				|| uri.contains("css")|| uri.endsWith("colabore") || uri.endsWith("login") || uri.endsWith("cadastroComSucessoVoluntario")) {
			return true;
		}

		if (request.getSession().getAttribute("usuarioLogado") != null) {
			return true;
		}

		response.sendRedirect("/MareAlta");
		return false;
	}
}