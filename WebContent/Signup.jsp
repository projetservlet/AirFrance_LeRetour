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
        <label for="lastname">Prenom</label>
        <input type="text" id="lastname" name="lastname"/>
        <label for="email">E-mail</label>
        <input type="email" id="email" name="email"/>
        <label for="confirmEmail">Confirmer e-mail</label>
        <input type="email" id="confirmEmail" name="confirmEmail"/>
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password"/>
        <label for="confirmPassword">confirmer mot de passe</label>
        <input type="password" id="confirmPassword" name="confirmPassword"/>
        <input type="checkbox" name="acceptGcs" id="acceptGcs"/><label for="acceptGcs">Accepter les conditions générales de vente</label>
        <a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
        <button type="submit">S'enregistrer</button>
    </form>
</body>
</html>
