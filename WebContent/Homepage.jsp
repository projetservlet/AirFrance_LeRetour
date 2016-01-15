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
     <link rel="stylesheet" type="text/css" href="style.css"> 
</head>

<body>
    <%@include file="Header.jsp"%>
    <div id=background>
    <form action="GetSearchResultsServlet">
    	<table>
    	<tr>
       <td><label for="airportDeparture">Aéroport départ</label></td>
        <td><select name="airportDeparture" id="airportDeparture">
            <%
                ArrayList<Aeroport> airportList = HibernateHelper.Aeroports() /* TODO fetch list of airports */;
                for (Aeroport airport: airportList) {
            %>
                <option value="<%=airport.getIdAeroport()%>"><%=airport.getNom()%></option>
            <%
                }
            %>
            </td>
        </select>
         </tr>
         <tr>
        <td><label for="airportArrival">Aéroport arrivée</label></td>
        <td><select name="airportArrival" id="airportArrival">
            <%
                for (Aeroport airport: airportList) {
            %>
            <option value="<%=airport.getIdAeroport()%>"><%=airport.getNom()%></option>
            <%
                }
            %>
        </select>
        </td>
        </tr>
        <tr>
        <td><label for="dateDeparture">Date départ</label></td> 
        <td><input type="date" id="dateDeparture" name="dateDeparture"/></td>
        </tr>
        <tr>
        <td><label for="dateReturn">Date Retour</label></td>
        <td><input type="date" id="dateReturn" name="dateReturn"/></td>
        </tr>
        <tr>
        <td><label for="nbPassengers">Nombre de passagers</label></td>
        <td><input type="number" id="nbPassengers" name="nbPassengers"/><td>
        </tr>
        <tr>
       <td><label for="classe">Classe</label></td>
        <td><select id="classe" name="classe" size="1">
            <option value="eco">Economique</option>
            <option value="sec">Seconde</option>
            <option value="pre">Première</option>
        </select>
       <button type="submit">Rechercher</button></td>
        </tr>
        </table>
    </form>
    </div>
    <%@include file="Footer.jsp"%>
</body>
</html>
