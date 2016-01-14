package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.HibernateHelper;

import java.io.IOException;

/**
 * Created by ipi on 13/01/2016.
 */
@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && password != null && (HibernateHelper.ClientChecks(email, password))) {
            request.getSession().setAttribute("email", email);
            getServletContext().getRequestDispatcher("/RedirectHomepageServlet").forward(request, response);
        }
        else {
        	request.setAttribute("errorConnexion","Email ou mot de passe incorrect");
        	getServletContext().getRequestDispatcher("/RedirectSigninServlet").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
