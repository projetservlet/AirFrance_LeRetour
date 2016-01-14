
	<div id="sign"><ul >
		<li><img src="resource/logo_AF.jpg" alt="logoAF" id="logo_AF"/></li>
		<li><a href="mailto: contact@airfrance.com" id="contact">Nous contacter</a></li>
		<%
			String login = (String) session.getAttribute("login");
			if (login != null) {
		%>
		<li><b><%=login%></b></li>
		<li><a href=Logout><button>Déconnexion</button></a></li>
		<%
			} else {
		%>
		<li><img src="resource/logo_newcompte.jpg" alt="logoCréation" />
			<a href="RedirectSigninServlet"><button>Connexion</button></a></li>
		<li><img src="resource/logo_connexion.jpg" alt="logoCréation" /><a
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
		<li class="acc"> <a href="#">VOS RESERVATIONS</a></li>
	</ul>
	</div>