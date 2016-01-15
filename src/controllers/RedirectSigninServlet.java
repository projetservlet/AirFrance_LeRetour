package controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Avion;
import models.HibernateHelper;
import org.hibernate.HibernateException;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by ipi on 13/01/2016.
 */
@WebServlet("/RedirectSigninServlet")
public class RedirectSigninServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/Connexion.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
		requestDispatcher.forward(request, response);
	}
}
