package br.com.desenvolvimentoweb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.desenvolvimentoweb.model.Pais;
import br.com.desenvolvimentoweb.service.PaisService;

@WebServlet("/ManterPais.do")
public class ManterPaisController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		int populacao = Integer.parseInt(request.getParameter("populacao"));
		double area = Double.parseDouble(request.getParameter("area"));
		
		Pais pais = new Pais();
		pais.setNome(nome);
		pais.setPopulacao(populacao);
		pais.setArea(area);
		
		PaisService service = new PaisService();
		service.criar(pais);
		pais = service.carregar(pais.getId());
		
		request.setAttribute("pais", pais);
		
		RequestDispatcher view = request.getRequestDispatcher("pais.jsp");
		view.forward(request, response);
	}
}
