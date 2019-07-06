package com.shop.dao;

 
import org.hibernate.Query;
import org.hibernate.Session;

import com.shop.modal.Orders;

public class OrdersDao {
	public static void generateOrder(Orders o) {
		Session se = HibernateUtility.getSession();
		se.beginTransaction();
		se.save(o);
		se.getTransaction().commit();
		se.close();
		
	}
	public static int getOrderIdBycustomer(Orders o) {
		Session se =HibernateUtility.getSession();
		se.beginTransaction();
		Query query = se.createQuery("select u.id from Orders u where u.order_date =:odate and u.total_amount=:ta and u.user_id=:uid");
		query.setDate("odate",o.getOrder_date());
		query.setInteger("ta", o.getTotal_amount());
		query.setInteger("uid", o.getUser_id());
		int value = (int) query.uniqueResult();
		se.getTransaction().commit();
		return value;
	} 
	

}
