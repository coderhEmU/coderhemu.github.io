package com.shop.dao;

import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtility {
	public static Session getSession() {
		Configuration cfg = new AnnotationConfiguration().configure("hibernate.cfg.xml");
		return cfg.buildSessionFactory().openSession();
	}

}
