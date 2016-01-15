<header>
	<div id="sign"><ul >
		<li id="logo_AF"><img src="resource/logo_AF.jpg" alt="logoAF"/></li>
		<li><a href="mailto: contact@airfrance.com" id="contact">Nous contacter</a></li>
		<%
			String email = (String) session.getAttribute("email");
			if (email != null) {
		%>
		<li><b><%=email%></b></li>
		<li><a href=Logout><button>D�connexion</button></a></li>
		<%
			} else {
		%>
		<li><img src="resource/logo_newcompte.jpg" alt="logoCr�ation" />
			<a href="RedirectSigninServlet"><button>Connexion</button></a></li>
		<li><img src="resource/logo_connexion.jpg" alt="logoCr�ation" /><a
			href="RedirectSignupServlet"><button>S'enregistrer</button></a></li>

		<%
			}
		%>

	</ul></div>
	<hr>
	<br>
	<div id="accueil"><ul>
		<li class="acc"><a href="RedirectHomepageServlet">ACCEUIL</a></li>
		<li class="acc" ><a href="google.com">ACHETER UN BILLET</a></li>
		<li class="acc"> <a href="RedirectReservationSummaryServlet">VOS RESERVATIONS</a></li>
	</ul>
	</div>
	<hr>
</header>