<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.aoua.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Accueil</title>
</head>
<link rel="stylesheet" href="aoua.css" type="text/css">
<body>
 <%
		String nom = request.getParameter("nom");
   		String prenom = request.getParameter("prenom");
   		
   		List<User> liste = (ArrayList<User>) session.getAttribute("notre_liste");
		
 	%>
<h1>ACCUEIL</h1>
	<br>
	<h2>BIENVENUE <%=nom %> <%=prenom %></h2>
	  
   <fieldset>
	  	<p> LISTE: </p>
		<br>
		<table>
			<tr>
				<td>nom</td>
				<td>prenom</td>
				<td>email</td>
				<td>speudo</td>
			</tr>
			<%
				for(User u : liste){
					%>
					<tr>
						<td><% out.print(u.getNom()); %></td>
						<td><% out.print(u.getPrenom()); %></td>
						<td><% out.print(u.getEmail()); %></td>
						<td><% out.print(u.getPseudo()); %></td>
					</tr>
					
					<%
				}
			%>
			
		</table>  
  </fieldset>
  <br>
  <form method="post" action = "Monservlet2">  

 	<div class="text-center">
   		<input type= "submit" value = "Deconnecter"/>
    </div>
   </form>
</body>
</html>