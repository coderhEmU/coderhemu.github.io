package com.shop.dao;

import org.hibernate.Session;

import com.shop.modal.Order_Details;

//purchased products details
public class Order_DetailsDao {
	public static void insertpurchasedProduct(Order_Details od) {
		Session se = HibernateUtility.getSession();
		se.beginTransaction();
		se.save(od);
		se.getTransaction().commit();
		se.close();
		
	}

}
