<%--
  Created by IntelliJ IDEA.
  User: ipi
  Date: 13/01/2016
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Air France: S'enregistrer</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<%@include file="Header.jsp"%>
	<form action="SignupServlet" method="post">
		<table>
			<tr>
				<td><label for="civilite">Civilite</label></td>
				<td><select name="civilite" id="civilite" size="1">
						<option value="mr">M.</option>
						<option value="mme">Mme</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="firstname">Nom</label></td>
				<td><input type="text" id="firstname" name="firstname" /></td>
				<div style="color: #FF0000;">${errorMessagefirstname}</div>
			</tr>
			<tr>
				<div style="color: #FF0000;">${errorMessagelastname}</div>
				<td><label for="lastname">Prenom</label></td>
				<td><input type="text" id="lastname" name="lastname" /></td>
			</tr>
			<tr>
				<div style="color: #FF0000;">${errorMessageAddress}</div>
				<td><label for="address">Adresse</label></td>
				<td><input type="text" id="address" name="address" /></td>
			</tr>
			<tr>
				<div style="color: #FF0000;">${errorMessagePhone}</div>
				<td><label for="phone">Telephone</label></td>
				<td><input type="number" id="phone" name="phone" /></td>
			</tr>
			<tr>
				<td><label for="email">E-mail</label></td>
				<td><input type="email" id="email" name="email" /></td>
				<div style="color: #FF0000;">${errorMessageemail}</div>
				</tr>
				<tr>
				<td><label for="confirmEmail">Confirmer e-mail</label></td>
				<td><input type="email" id="confirmEmail" name="confirmEmail" /></td>
				<div style="color: #FF0000;">${errorMessageconfirmEmail}</div>
				<tr>
				<td><label for="password">Mot de passe</label></td>
				<td><input type="password" id="password" name="password" /></td>
				<div style="color: #FF0000;">${errorMessagepassword}</div>
				</tr>
				<tr>
				<td><label for="confirmPassword">confirmer mot de passe</label></td>
				<td><input type="password" id="confirmPassword" name="confirmPassword" /></td>
				<div style="color: #FF0000;">${errorMessageconfirmPassword}</div>
				</tr>
				<tr>
				<td><input type="checkbox" name="acceptGcs" id="acceptGcs" />
				<label for="acceptGcs">Accepter les conditions générales de
					vente</label></td>
				<div style="color: #FF0000;">${errorMessageacceptGcs}</div>
				</tr>
				<tr>
				<td><a href="RedirectHomepageServlet"><button type="button">Retour</button></a>
				<button type="submit">S'enregistrer</button></td>
				</tr>
		</table>
	</form>
	<%@include file="Footer.jsp"%>
</body>
</html>
