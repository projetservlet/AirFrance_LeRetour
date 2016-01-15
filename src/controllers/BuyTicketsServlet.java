package controllers;

import models.*;
import sessionUtils.ReservationSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ipi on 13/01/2016.
 */
@WebServlet("/BuyTicketsServlet")
public class BuyTicketsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getSession().getAttribute("email");
        String flightId = request.getParameter("chosenFlight");
        Vol flight = HibernateHelper.getFlightById(flightId);
        Client client = HibernateHelper.getClientByEmail(email);
        ReservationSession reservationSession = (ReservationSession) request.getSession().getAttribute("reservation");

        Reservation reservation = HibernateHelper.createReservation(flight, client, null);
        Etape etape = new Etape(flight, reservation, 1);
        HibernateHelper.createEtape(etape);
        //Reservation reservation = HibernateHelper.getClientByIdClientAndDate(client.getIdClient().toString(), reservationSession.getDateDeparture());
        //HibernateHelper.createPassenger(reservation, client);

        getServletContext().getRequestDispatcher("/RedirectHomepageServlet").forward(request, response);
    }
}
