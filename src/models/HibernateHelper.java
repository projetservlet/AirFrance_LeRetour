package models;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import jdk.nashorn.internal.runtime.options.Option;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateHelper {

	private static SessionFactory sessionFactory;

	static {
		try {
			// Cr�e l�objet SessionFactory � partir de hibernate.cfg.xml
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static Session currentSession() {

		try {
			return sessionFactory.openSession();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static <T> ArrayList<T> getResource(String tableName) throws HibernateException {
		Session session = currentSession();
		ArrayList<T> ret = new ArrayList<T>();

		String hql = "from " + tableName;
		Query query = session.createQuery(hql);
		List list = query.list();

		Iterator it = (list.iterator());
		while (it.hasNext()) {
			T a = (T) it.next();
			ret.add(a);
		}
		return ret;
	}

	public static <T> ArrayList<T> getResource(String tableName, String conditions) throws HibernateException {
		Session session = currentSession();
		ArrayList<T> ret = new ArrayList<T>();

		String hql = "from " + tableName + " where " + conditions;
		Query query = session.createQuery(hql);
		List list = query.list();

		Iterator it = (list.iterator());
		while (it.hasNext()) {
			T a = (T) it.next();
			ret.add(a);
		}
		return ret;
	}

	public static ArrayList<Avion> Avions() throws HibernateException {
		return getResource("Avion");
	}

	public static ArrayList<Aeroport> Aeroports() throws HibernateException {
		return getResource("Aeroport");
	}

	public static ArrayList<Ville> Villes() throws HibernateException {
		return getResource("Ville");
	}

	public static ArrayList<Vol> Vols() throws HibernateException {
		return getResource("Vol");
	}

	public static ArrayList<Vol> retrieveFlights(String airportDeparture, String airportArrival, String dateDeparture) {
		String conditions = "'" + airportDeparture + "' = aeroportByIdAeroportDepart AND '" + airportArrival
				+ "' = aeroportByIdAeroportArrivee AND '" + dateDeparture + "' = dateDepart";
		return getResource("Vol", conditions);
		/*
		 * ArrayList<Vol> flights = Vols(); ArrayList<Vol> filteredFlights = new
		 * ArrayList<Vol>();
		 * 
		 * for (Vol vol: flights) { String airportDepartureCode =
		 * vol.getAeroportByIdAeroportDepart().getCode(); String
		 * airportArrivalCode = vol.getAeroportByIdAeroportDepart().getCode();
		 * Date flightDate = vol.getDateDepart(); if
		 * (airportDepartureCode.equals(airportDeparture) &&
		 * airportArrivalCode.equals(airportArrival) &&
		 * flightDate.compareTo(dateDeparture) == 0 ) {
		 * filteredFlights.add(vol); } }
		 * 
		 * return filteredFlights;
		 */
	}

	public static ArrayList<Client> Clients() throws HibernateException {
		return getResource("Client");
	}

	public static ArrayList<Pays> Pays() throws HibernateException {
		return getResource("Pays");
	}

	public static ArrayList<Reservation> Reservations() throws HibernateException {
		return getResource("Reservation");
	}

	public static void AddObjectInDB(Object Objet) {
		Transaction tx = null;
		Session session = currentSession();
		tx = session.beginTransaction();
		session.save(Objet);
		tx.commit();
	}

	public static boolean ClientChecks(String email, String password) {
		Session session = currentSession();
		String hql = "select client.mail from Client as client where client.mail ='" + email + "' and client.password='"
				+ password + "' ";
		Query query = session.createQuery(hql);
		if (query.list().size() == 1) {
			return true;
		} else {
			return false;
		}
	}

	public static ArrayList<Reservation> GetReservationWhereClientIs(String Mail) {

		Session session = currentSession();
		String q = "from Reservation  as reservation where reservation.client.idClient = (select client.idClient from Client as client where client.mail='"
				+ Mail + "')";
		List list = session.createQuery(q).list();
		ArrayList<Reservation> ret = new ArrayList<Reservation>();
		Iterator it = (list.iterator());
		while (it.hasNext()) {
			Reservation a = (Reservation) it.next();
			ret.add(a);
		}
		return ret;

	}
	
	
}
