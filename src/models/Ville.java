package models;
// Generated 14 janv. 2016 11:13:46 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Ville generated by hbm2java
 */
public class Ville implements java.io.Serializable {

	private Integer idVille;
	private Pays pays;
	private String nom;
	private Set aeroports = new HashSet(0);

	public Ville() {
	}

	public Ville(Pays pays) {
		this.pays = pays;
	}

	public Ville(Pays pays, String nom, Set aeroports) {
		this.pays = pays;
		this.nom = nom;
		this.aeroports = aeroports;
	}

	public Integer getIdVille() {
		return this.idVille;
	}

	public void setIdVille(Integer idVille) {
		this.idVille = idVille;
	}

	public Pays getPays() {
		return this.pays;
	}

	public void setPays(Pays pays) {
		this.pays = pays;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Set getAeroports() {
		return this.aeroports;
	}

	public void setAeroports(Set aeroports) {
		this.aeroports = aeroports;
	}

}
