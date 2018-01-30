package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Departement;

public class DepartementService {
	
	List<Departement> listeDepartements = new ArrayList<>();
	
	public DepartementService(){
		listeDepartements.add(new Departement(1, "Informatique"));
		listeDepartements.add(new Departement(2, "Comptabilité"));
		listeDepartements.add(new Departement(3, "Ressources Humaines"));
		listeDepartements.add(new Departement(4, "Administratif"));
	}
	
	public List<Departement> listerDepartements(){
		return listeDepartements;
	}
	
	public void addDepartement(Departement departement) {
		listeDepartements.add(departement);
	}

}
