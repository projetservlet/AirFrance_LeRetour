package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        String email              = request.getParameter("email");
        String confirmEmail       = request.getParameter("confirmEmail");
        String password           = request.getParameter("password");
        String confirmPassword    = request.getParameter("confirmPassword");
           
        boolean ClientCanBeCreated = true;
        
        //check password is correct
        Pattern p = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}$");
        Matcher m = p.matcher(password);
        if (!m.matches() ) {
        	ClientCanBeCreated = false;
        	request.setAttribute("errorMessagepassword","Mot de passe incorrect : doit contenir au moin une majuscule, une miniscule et un chiffre");
        }
        
   
        if (!password.equals(confirmPassword)) {
        	ClientCanBeCreated = false;
        	request.setAttribute("errorMessageconfirmPassword","vous avez rentré deux mots de passe différents");
        }
        
        if (!email.equals(confirmEmail)) {
        	ClientCanBeCreated = false;
        	request.setAttribute("confirmEmail","vous avez rentré deux emails différents");
        }
      

        if (ClientCanBeCreated) {
        	
        	
        	
        getServletContext().getRequestDispatcher("/RedirectHomepageServlet").forward(request, response);
        }
        else {
         getServletContext().getRequestDispatcher("/Signup.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String url = "/Signup.jsp";
//        response.sendRedirect(url);
    }
}
