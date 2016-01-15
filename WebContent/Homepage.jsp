<%@ page import="models.Aeroport" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.HibernateHelper" %><%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Air France: Accueil</title>
</head>
<body>
    <%@include file="Header.jsp"%>
    <form action="GetSearchResultsServlet">
        <label for="airportDeparture">Aéroport départ</label>
        <select name="airportDeparture" id="airportDeparture">
            <%
                ArrayList<Aeroport> airportList = HibernateHelper.Aeroports() /* TODO fetch list of airports */;
                for (Aeroport airport: airportList) {
            %>
                <option value="<%=airport.getIdAeroport()%>"><%=airport.getNom()%></option>
            <%
                }
            %>
        </select>
        <label for="airportArrival">Aéroport arrivée</label>
        <select name="airportArrival" id="airportArrival">
            <%
                for (Aeroport airport: airportList) {
            %>
            <option value="<%=airport.getIdAeroport()%>"><%=airport.getNom()%></option>
            <%
                }
            %>
        </select>
        <label for="dateDeparture">Date départ</label>
        <input type="date" id="dateDeparture" name="dateDeparture"/>
        <label for="dateReturn">Date Retour</label>
        <input type="date" id="dateReturn" name="dateReturn"/>
        <label for="nbPassengers">Nombre de passagers</label>
        <input type="number" id="nbPassengers" name="nbPassengers"/>
        <label for="classe">Classe</label>
        <select id="classe" name="classe" size="3">
            <option value="eco">Economique</option>
            <option value="sec">Seconde</option>
            <option value="pre">Première</option>
        </select>
        <button type="submit">Rechercher</button>
    </form>
    <%@include file="Footer.jsp"%>
</body>
</html>
