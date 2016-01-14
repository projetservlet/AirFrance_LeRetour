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

	static	{
		try {
			// Crée l’objet SessionFactory à partir de hibernate.cfg.xml
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

	public static ArrayList<Avion> Avions() throws HibernateException {
		
		
		Session session = currentSession();
		List list =  session.createQuery("from Avion").list();
			ArrayList<Avion> ret = new ArrayList<Avion>();
	
			String hql = "from Avion";
			Query query = session.createQuery(hql);
			List avion = query.list();
			
		//List Avion = (List) session.createQuery("from Avion");
		Iterator it = (avion.iterator());
		while(it.hasNext())
			{
				Avion a = (Avion)it.next();
				ret.add(a);
				}
		return ret;			
	}
	

}
