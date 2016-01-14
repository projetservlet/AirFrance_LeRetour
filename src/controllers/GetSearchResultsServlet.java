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
@WebServlet("/GetSearchResultsServlet")
public class GetSearchResultsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String airportDeparture = request.getParameter("airportDeparture");
        String airportArrival = request.getParameter("airportArrival");
        String dateDeparture = request.getParameter("dateDeparture");
        String dateReturn = request.getParameter("dateReturn");
        int nbPassengers = Integer.parseInt(request.getParameter("nbPassengers"));
        String classe = request.getParameter("classe");
    }
}
