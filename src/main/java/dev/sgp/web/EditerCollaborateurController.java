package dev.sgp.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.getWriter().write("<h1>Edition des Collaborateurs</h1>");

		String matricule = req.getParameter("matricule");

		resp.setContentType("text/html");

		if (matricule == null) {	
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.getWriter().write("Matricule: " + matricule);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		
		boolean paramMissing = false;
		StringBuilder resError = new StringBuilder("Les parametres suivants sont incorrects: ");
		
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		
		if(matricule.isEmpty()) {
			paramMissing = true;
			resError.append("matricule ");
		}
		if(titre.isEmpty()) {
			paramMissing = true;
			resError.append("titre ");
		}
		if(nom.isEmpty()) {
			paramMissing = true;
			resError.append("nom ");
		}
		if(prenom.isEmpty()) {
			paramMissing = true;
			resError.append("prenom ");
		}
		
		if(paramMissing) {
			resp.sendError(400, resError.toString());
		}
		else {
			resp.setStatus(201);
			resp.getWriter().write("Creation d'un collaborateur avec les infos suivantes: ");
			resp.getWriter().write("matricule= "+matricule+", titre= "+titre+", prenom= "+prenom+", nom= "+nom);
		}
		
		
	}
}
