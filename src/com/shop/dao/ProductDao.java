package com.shop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shop.modal.Product;
import com.shop.modal.User;

public class ProductDao {
	public static List<Product> getAllProducts() {
		Session se = HibernateUtility.getSession();
		Query q = se.createQuery("from Product");
		List<Product> pList = q.list();
		se.close();
		return pList;
	}

	public static List<Product> getProductsByCategory(String category) {
		Session se = HibernateUtility.getSession();
		Query q = se.createQuery("from Product where category=:p_cat");
		q.setString("p_cat", category);
		List<Product> pList = q.list();
		se.close();
		return pList;
	}

	public static List<String> getCategories() {
		Session se = HibernateUtility.getSession();
		Query q = se.createQuery("select distinct(category) from Product");
		List<String> cList = q.list();
		se.close();
		System.out.println(cList);
		return cList;

	}

	public static Product getProductById(int id) {
		Session se = HibernateUtility.getSession();
		Query qr = se.createQuery("from Product where id=:p_id");
		qr.setInteger("p_id", id);
		Product p = (Product) qr.uniqueResult();
		se.close();
		return p;

	}

}
