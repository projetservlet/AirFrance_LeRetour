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
@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        if (login != null && password != null /* TODO check that login and password are correct, use regexp */) {
            request.getSession().setAttribute("login", login);
            request.getSession().setAttribute("password", password);
        }

        getServletContext().getRequestDispatcher("/RedirectHomepageServlet").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
