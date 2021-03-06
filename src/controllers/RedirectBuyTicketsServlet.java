package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ipi on 13/01/2016.
 */
@WebServlet("/RedirectBuyTicketsServlet")
public class RedirectBuyTicketsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "";

        if (request.getSession().getAttribute("email") != null) {
            url = "/BuyTickets.jsp?";
        } else {
            url = "/Connexion.jsp";
            request.getSession().setAttribute("forwardUrl", "/BuyTickets.jsp");
        }

        request.getRequestDispatcher(url).forward(request, response);
    }
}
