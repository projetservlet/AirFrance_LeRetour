package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Client;
import models.HibernateHelper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by ipi on 13/01/2016.
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname          = request.getParameter("firstname");
        String lastname           = request.getParameter("lastname");
        String address           = request.getParameter("address");
        String phone           = request.getParameter("phone");
        String email              = request.getParameter("email");
        String confirmEmail       = request.getParameter("confirmEmail");
        String password           = request.getParameter("password");
        String confirmPassword    = request.getParameter("confirmPassword");

        boolean ClientCanBeCreated = true;
        
        //check password is correct
        Pattern p = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{4,}$");
        Pattern phoneRegexp = Pattern.compile("[0-9]*");
        Matcher m = p.matcher(password);
        if (!m.matches() ) {
        	ClientCanBeCreated = false;
        	request.setAttribute("errorMessagepassword","Mot de passe incorrect : doit contenir au moin une majuscule, une miniscule et un chiffre et faire plus de 4 caractéres");
        }
        if (!password.equals(confirmPassword)) {
        	ClientCanBeCreated = false;
        	request.setAttribute("errorMessageconfirmPassword","vous avez rentré deux mots de passe différents");
        }
        
        if (!email.equals(confirmEmail)) {
        	ClientCanBeCreated = false;
        	request.setAttribute("confirmEmail","vous avez rentré deux emails différents");
        }

        if (phone == null) {
            ClientCanBeCreated = false;
            request.setAttribute("errorMessagePhone","Vous devez donner votre numero de telephone");
        } else if (!phoneRegexp.matcher(phone).matches()) {
        	ClientCanBeCreated = false;
        }

        if (address == null) {
        	ClientCanBeCreated = false;
        	request.setAttribute("errorMessageAddress","Vous devez donner votre addresse");
        }

		ArrayList<Client> listeClient = HibernateHelper.Clients();
		for (Client c : listeClient) {
			if (c.getMail().equals(email)) {
				ClientCanBeCreated = false;
				request.setAttribute("errorMessageemail", "Un compte utilise déjà cet email !");
			}
		}

		if (ClientCanBeCreated) {

			Client newClient = new Client(email, password);
			newClient.setNom(lastname);
			newClient.setPrenom(firstname);
			newClient.setTelephone(phone);
			newClient.setAdresse(address);
			HibernateHelper.AddObjectInDB(newClient);

            request.getSession().setAttribute("email", email);
            getServletContext().getRequestDispatcher("/RedirectHomepageServlet").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/Signup.jsp").forward(request, response);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
