<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="aoua.css" type="text/css">
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<form method="post" action = "Accueil">

<h1>CONNECTEZ-VOUS</h1>
<fieldset>
<p>
    <label for= "pseudo" > PSEUDO :</label> 
    <input type="text" name="pseudo" id= "pseudo" />
    </p>
     <div>
    <br>
    <p>
     <label for= "mot de passe" > MOT DE PASSE:</label> 
    <input type="text" />
    
    </p>
    </div>
    </fieldset>
    <br>
    <div class="text-center">
    <button>Se connecter</button>
    </div>
</form>
</body>
</html>