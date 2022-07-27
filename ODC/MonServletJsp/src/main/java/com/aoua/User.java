package com.aoua;

public class User {
	private String nom;
	private String prenom;
	private String email;
	private String pseudo;
	
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public User() {
		
	}
	public User(String nom, String prenom, String email, String pseudo) {
		this.nom = nom;
		this.prenom=prenom;
		this.email= email;
		this.pseudo= pseudo;
	}
}
