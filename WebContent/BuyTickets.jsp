<%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Air France: Buy</title>
</head>
<body>
    <%@include file="Header.jsp"%>
    <%
        String flightId = request.getParameter("chosenFlight");
    %>

    <form action="BuyTicketsServlet">
        <input type="hidden" name="chosenFlight" value="<%=flightId%>"/>
        <label for="cardNumber">Carte bleu</label><input type="number" id="cardNumber" name="cardNumber"/>
        <a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
        <button type="submit">Payer</button>
    </form>

    <%@include file="Footer.jsp"%>
</body>
</html>
