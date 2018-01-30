package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {
	
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	private DepartementService deptService = Constantes.DEPT_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");
		
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateurs.jsp").forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		
		String adresse = req.getParameter("adresse");
		String numeroSecu = req.getParameter("numeroSecu");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateNaissanceString = req.getParameter("dateNaissance");
		
		String[] dateElement = dateNaissanceString.split("-");	
		int annee = Integer.parseInt(dateElement[0]);
		int mois = Integer.parseInt(dateElement[1]);
		int jour = Integer.parseInt(dateElement[2]);
		
		LocalDate date = LocalDate.of(annee, mois, jour);
		
		Collaborateur collab = new Collaborateur(nom, prenom, date, adresse, numeroSecu);
		
		collabService.sauvegarderCollaborateur(collab);
		
		req.setAttribute("listeNoms", collabService.listerCollaborateur());
		req.setAttribute("listeDepartements", deptService.listerDepartements());
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
	
	}
}
