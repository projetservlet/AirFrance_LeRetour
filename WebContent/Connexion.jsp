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
      <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
 	<%@include file="Header.jsp"%>
    <form action="SigninServlet" method="post" class="connexion">
        <label for="email">Email</label>
        <input type="email" id="email" name="email"/>
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password"/>
        <a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
        <button type="submit">Connexion</button>
        <div style="color: #FF0000;">${errorConnexion}</div>
    </form>
     <%@include file="Footer.jsp"%>
</body>
</html>
