<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="aoua.css" type="text/css">
<meta charset="UTF-8">
<title>Inscription</title>
</head>
<body>
<h1>INSCRIPTION</h1>

    <form method="post"  action = "Accueil">
    <fieldset>
     <div>
    <label for= "nom" > NOM :</label> 
    <input type="text" id= "nom" name="nom" required>
    </div>
    <div>
    <br>
     <label for= "prenom" > PRENOM :</label> 
    <input type="text" name="prenom" id="prenom"  required>
    </div>
    
    <div>
    <br>
     <label for= "pseudo" > PSEUDO :</label> 
    <input type="text" name="pseudo" required> 
    </div>
    
    <div>
    <br>
     <label for= "mail" > MAIL :</label> 
    <input type="text" name="mail"  required>
    </div>
    
    <div>
    <br>
     <label for= "pass" > MOT DE PASSE :</label> 
    <input type="password" placeholder="xxxxxxxx" name="password" required>
    </div>
    
    <div>
    <br>
     <label for= "repeter" > REPETER MOT DE PASSE :</label> 
    <input type="password" placeholder="xxxxxxxx" name="confirmation" required>
    </div>
    </fieldset>
    <br>
    <div class="text-center">
    <button type="submit">S'inscrire</button>
    </div>
    
    
    
    </form>

<p> 

</p>
</body>
</html>