package com.aoua;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Monservlet")
public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Monservlet() {
        super();
        
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom=request.getParameter("nom");
		request.setAttribute("nom", nom);
		String prenom=request.getParameter("prenom");
		request.setAttribute("prenom", prenom);
		String pseudo=request.getParameter("pseudo");
		request.setAttribute("pseudo", pseudo);
		String mail=request.getParameter("mail");
		request.setAttribute("mail", mail);
		String password=request.getParameter("password");
		request.setAttribute("password", password);
		String confirmation=request.getParameter("confirmation");
		request.setAttribute("confirmation", confirmation);
		
		
		
		HttpSession session = request.getSession();
		
		List<User> liste = (ArrayList<User>) session.getAttribute("notre_liste");
		if(liste == null)
			liste = new ArrayList<>();
		
		User utilisateur = new User(nom, prenom, mail, pseudo);
		
		liste.add(utilisateur);
		
		session.setAttribute("nom", nom);					
		session.setAttribute("prenom", prenom);
		session.setAttribute("pseudo", pseudo);
		session.setAttribute("mail", mail);
		session.setAttribute("notre_liste", liste);
		
		this.getServletContext().getRequestDispatcher("/Accueil.jsp").forward(request, response);
	
        if(password.equals(confirmation)) {
        	request.getRequestDispatcher("Accueil.jsp").forward(request, response);
        	}
        else {
        	request.getRequestDispatcher("Inscrire.jsp").forward(request, response);
}
        }
}
