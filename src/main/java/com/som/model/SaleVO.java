package com.som.model;

import java.sql.Timestamp;

public class SaleVO {
	private int sale_seq;
	private int user_seq;
	private int cate_seq;
	private String sale_photo;
	private String sale_name;
	private int sale_price;
	private String sale_content;
	private int sale_account;
	private String sale_bank;
	private String sale_acc_holder;
	private String sale_check;
	private Timestamp sale_date;
	private String sale_return;
	
	private String user_id;
	
	public SaleVO() {
		super();
	}

	public SaleVO(int sale_seq, int user_seq, int cate_seq, String sale_photo, String sale_name, int sale_price,
			String sale_content, int sale_account, String sale_bank, String sale_acc_holder, String sale_check,
			Timestamp sale_date, String sale_return) {
		super();
		this.sale_seq = sale_seq;
		this.user_seq = user_seq;
		this.cate_seq = cate_seq;
		this.sale_photo = sale_photo;
		this.sale_name = sale_name;
		this.sale_price = sale_price;
		this.sale_content = sale_content;
		this.sale_account = sale_account;
		this.sale_bank = sale_bank;
		this.sale_acc_holder = sale_acc_holder;
		this.sale_check = sale_check;
		this.sale_date = sale_date;
		this.sale_return = sale_return;
	}
	
	// 매매 희망 상품 폼 작성 생성자
	public SaleVO(int user_seq, int cate_seq, String sale_photo, String sale_name, int sale_price, String sale_content,
			int sale_account, String sale_bank, String sale_acc_holder, String sale_check) {
		super();
		this.user_seq = user_seq;
		this.cate_seq = cate_seq;
		this.sale_photo = sale_photo;
		this.sale_name = sale_name;
		this.sale_price = sale_price;
		this.sale_content = sale_content;
		this.sale_account = sale_account;
		this.sale_bank = sale_bank;
		this.sale_acc_holder = sale_acc_holder;
		this.sale_check = sale_check;
	}
	

	public int getSale_seq() {
		return sale_seq;
	}

	public int getUser_seq() {
		return user_seq;
	}

	public int getCate_seq() {
		return cate_seq;
	}

	public String getSale_photo() {
		return sale_photo;
	}

	public String getSale_name() {
		return sale_name;
	}

	public int getSale_price() {
		return sale_price;
	}

	public String getSale_content() {
		return sale_content;
	}

	public int getSale_account() {
		return sale_account;
	}

	public String getSale_bank() {
		return sale_bank;
	}

	public String getSale_acc_holder() {
		return sale_acc_holder;
	}

	public String getSale_check() {
		return sale_check;
	}

	public Timestamp getSale_date() {
		return sale_date;
	}

	public String getSale_return() {
		return sale_return;
	}
	
	
	
	
}
