<%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Air France: S'enregistrer</title>
</head>
<body>
    <form action="SignupServlet" method="post">
        <label for="civilite">Civilite</label>
        <select name="civilite" id="civilite" size="2">
            <option value="mr">M.</option>
            <option value="mme">Mme</option>
        </select>
        <label for="firstname">Nom</label>
        <input type="text" id="firstname" name="firstname"/>
        <div style="color: #FF0000;">${errorMessagefirstname}</div>
        <label for="lastname">Prenom</label>
        <input type="text" id="lastname" name="lastname"/>
        <div style="color: #FF0000;">${errorMessagelastname}</div>
        <label for="email">E-mail</label>
        <input type="email" id="email" name="email"/>
        <div style="color: #FF0000;">${errorMessageemail}</div>
        <label for="confirmEmail">Confirmer e-mail</label>
        <input type="email" id="confirmEmail" name="confirmEmail"/>
        <div style="color: #FF0000;">${errorMessageconfirmEmail}</div>
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password"/>
         <div style="color: #FF0000;">${errorMessagepassword}</div>
        <label for="confirmPassword">confirmer mot de passe</label>
        <input type="password" id="confirmPassword" name="confirmPassword"/>
         <div style="color: #FF0000;">${errorMessageconfirmPassword}</div>
        <input type="checkbox" name="acceptGcs" id="acceptGcs"/><label for="acceptGcs">Accepter les conditions générales de vente</label>
          <div style="color: #FF0000;">${errorMessageacceptGcs}</div>
        <a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
        <button type="submit">S'enregistrer</button>
    </form>
</body>
</html>
