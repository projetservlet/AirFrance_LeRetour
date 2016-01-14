package models;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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
		List list = session.createQuery("from " + tableName).list();
		ArrayList<T> ret = new ArrayList<T>();

		String hql = "from " + tableName;
		Query query = session.createQuery(hql);
		List T = query.list();

		// List T = (List) session.createQuery("from T");
		Iterator it = (T.iterator());
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
	
	public static boolean ClientChecks(String email,String password) {
		Session session = currentSession();
		String hql = "select client.mail from Client as client where client.mail ='"+ email  +"'";
		Query query = session.createQuery(hql);
		if ( query.list().size() == 1) {
			return true;
		}
		else {
			return false;
		}
	}
	

}
