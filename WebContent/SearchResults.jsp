<%@ page import="models.Vol" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Air France: Résultats de recherche</title>
     <link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<body>
    <%@include file="Header.jsp"%>

    <form action="RedirectBuyTicketsServlet">
        <ul>
        <%
            ArrayList<Vol> flights = (ArrayList<Vol>) request.getAttribute("flights");
            for (Vol flight: flights) {
        %>
            <li>
            <p>
                <input type="radio" name="chosenFlight" value="<%=flight.getIdVol()%>"/>
                Date départ: <%=flight.getDateDepart()%> <%=flight.getHeureDepart()%>
                / Date arrivée: <%=flight.getDateArrive()%> <%=flight.getHeureArrivee()%>
            </p>
            <p>Prix: <%=flight.getPrix()%></p>
            </li>
        <%
            }
        %>
        </ul>
        <a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
        <button type="submit">Payer</button>
    </form>

    <%@include file="Footer.jsp"%>
</body>
</html>
