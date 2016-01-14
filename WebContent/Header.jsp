<header>
    <h1>Air France</h1>
    <%
        String email = (String)session.getAttribute("email");
        if (email != null) {
    %>
        <b><%=email%></b>
    <%
        } else {
    %>
        <a href="RedirectSigninServlet"><button>Connexion</button></a>
        <a href="RedirectSignupServlet"><button>S'enregistrer</button></a>
    <%
        }
    %>
</header>