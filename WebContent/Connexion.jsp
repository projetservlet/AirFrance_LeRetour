<%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Air France: Connexion</title>
</head>
<body>
    <form action="SigninServlet">
        <label for="login">Login</label>
        <input type="text" id="login" name="login"/>
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password"/>
        <a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
        <button type="submit">Connexion</button>
    </form>
</body>
</html>
