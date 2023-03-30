package com.som.model;

import java.sql.Timestamp;

public class mypageVO {
	private Timestamp order_date;
	private int product_seq;
	private int rental_quantity;
	private int rental_period;
	private int rental_payment;
	
	private int user_seq;
	private String product_name;
	private Timestamp return_date;
	private String photo_path;
	
	public mypageVO() {
		super();
	}

	public Timestamp getOrder_date() {
		return order_date;
	}

	public int getProduct_seq() {
		return product_seq;
	}

	public int getRental_quantity() {
		return rental_quantity;
	}

	public int getRental_period() {
		return rental_period;
	}

	public int getUser_seq() {
		return user_seq;
	}

	public String getProduct_name() {
		return product_name;
	}

	public int getRental_payment() {
		return rental_payment;
	}

	public Timestamp getReturn_date() {
		return return_date;
	}

	public String getPhoto_path() {
		return photo_path;
	}

	
	
}
