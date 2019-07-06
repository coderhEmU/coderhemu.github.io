package com.shop.modal;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="orders")
public class Orders {
	@Id @GeneratedValue
	private int id;
	private int user_id;
	private int total_amount;
	private Date order_date;
	
	
	public Orders() {
		super();
	}
	
	public Orders( int user_id, int total_amount, Date order_date) {
		super();
		this.user_id = user_id;
		this.total_amount = total_amount;
		this.order_date = order_date;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	@Override
	public String toString() {
		return "Orders [id=" + id + ", user_id=" + user_id + ", total_amount=" + total_amount + ", order_date="
				+ order_date + "]";
	}
	

}
