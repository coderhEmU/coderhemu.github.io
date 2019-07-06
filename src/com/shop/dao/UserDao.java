package com.shop.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shop.modal.User;

public class UserDao {
	public static boolean IsUserExists(User u) {
		Session se = HibernateUtility.getSession();

		Query qr = se.createQuery("from User where email=:u_email");
		qr.setString("u_email", u.getEmail());
		User us = (User) qr.uniqueResult();
		System.out.println(us);
		if (us == null) {
			return false;
		} else {
			return true;
		}
	}

	public static boolean RegisterUser(User u) {
		Session se = HibernateUtility.getSession();
		if (IsUserExists(u)) {
			return false;
		} else {
			Transaction tx = se.beginTransaction();
			se.save(u);
			tx.commit();
			se.close();
			System.out.println("saved");
			return true;
		}
	}

	public static User getUserByName(String name) {
		Session se = HibernateUtility.getSession();

		Query q = se.createQuery("from User where name=:u_name");
		q.setString("u_name", name);
		User u = (User) q.uniqueResult();

		se.close();
		return u;

	}

	public static User getUserByMail(String email) {
		Session se = HibernateUtility.getSession();

		Query q = se.createQuery("from User where email=:e_mail");
		q.setString("e_mail", email);
		User u = (User) q.uniqueResult();

		se.close();
		return u;

	}

}
