package edu.fa.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {
	private static SessionFactory sessionFactory;

	private HibernateUtils() {
	}

	static {
		Configuration cfg = new Configuration();
		cfg.configure();

		if (sessionFactory == null) {
			sessionFactory = cfg.buildSessionFactory();
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
