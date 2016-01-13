<header>
    <h1>Air France</h1>
    <%
        String login = (String)session.getAttribute("login");
        if (login != null) {
    %>
        <b><%=login%></b>
    <%
        } else {
    %>
        <a href="RedirectSigninServlet"><button>Connexion</button></a>
        <a href="RedirectSignupServlet"><button>S'enregistrer</button></a>
    <%
        }
    %>
</header>