package com.som.model;

import java.sql.Timestamp;

public class returnVO {
	private int return_seq;
	private int user_seq;
	private int rental_seq;
	private int return_quantity;
	private Timestamp return_date;
	private String return_ohters;
	private Timestamp w_date;
	
	private String user_name;
	private int order_quantity;
	private String product_name;
	private Timestamp rental_date;
	private int rental_period;
	private Timestamp return_ex_date;
	private double return_num;
	


	public returnVO() {
		super();
	}

	public int getReturn_seq() {
		return return_seq;
	}

	public int getUser_seq() {
		return user_seq;
	}

	public int getRental_seq() {
		return rental_seq;
	}

	public int getReturn_quantity() {
		return return_quantity;
	}

	public Timestamp getReturn_date() {
		return return_date;
	}

	public String getReturn_ohters() {
		return return_ohters;
	}

	public Timestamp getW_date() {
		return w_date;
	}

	public String getUser_name() {
		return user_name;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public String getProduct_name() {
		return product_name;
	}

	public Timestamp getRental_date() {
		return rental_date;
	}

	public int getRental_period() {
		return rental_period;
	}

	public Timestamp getReturn_ex_date() {
		return return_ex_date;
	}
	
	public double getReturn_num() {
		return return_num;
	}
	
}
