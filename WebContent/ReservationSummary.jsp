<%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@page import="models.Passager"%>
<%@page import="models.Etape"%>
<%@page import="models.Reservation"%>
<%@page import="models.HibernateHelper"%>
<%@page import="models.Aeroport"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<%@include file="Header.jsp"%>

	<%
		// TODO : Create a new Servlet;
		ArrayList<Reservation> ListeReservation = (ArrayList<Reservation>) request.getAttribute("reservations");
		for (Reservation reser : ListeReservation) {
	%>
		<h3>Numero de reservation :
			<%=reser.getIdReservation()%>
		 </h3>
		<h4><%=reser.getPassagers().size() %> Passagers </h4>
		<table border=1>
			<tr>
				<th>Nom</th>
				<th>Categorie</th>

			</tr>
			<%
				for (Object o : reser.getPassagers()) {
						Passager p = (Passager) o;
			%>
			<tr>
				<td><%=p.getNom()%></td>
				<td><%=p.getCategorie()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<h4>Etapes de la reservation</h4>
		<table border=1>
			<tr>
				<th>Type d'etape</th>
				<th>Numero d'etape</th>
				<th>Date de départ</th>
				<th>Heure de départ</th>
				<th>Type avion</th>
				<th>Aeroport de départ</th>
				<th>Aeroport d'arrivée</th>
			</tr>
			<%
				for (Object o : reser.getEtapes()) {
						Etape e = (Etape) o;
			%>
			<tr>
				<td><%=e.getType()%></td>
				<td><%=e.getNumero()%></td>
				<td><%=e.getVol().getDateDepart()%></td>
				<td><%=e.getVol().getHeureDepart()%></td>
				<td><%=e.getVol().getAvion().getType()%></td>
				<td><%=e.getVol().getAeroportByIdAeroportArrivee().getNom()%></td>
				<td><%=e.getVol().getAeroportByIdAeroportDepart().getNom()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</table>

	<%
		}
	%>

	<%@include file="Footer.jsp"%>
</body>
</html>
