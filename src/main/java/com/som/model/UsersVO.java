package com.som.model;

public class UsersVO {

	
	private int user_seq;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_nick;
	private String user_address;
	private String user_phone;
	private String user_date;
	
	public UsersVO(int user_seq, String user_id, String user_pw, String user_name, String user_nick,
			String user_address, String user_phone, String user_date) {
		this.user_seq = user_seq;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_nick = user_nick;
		this.user_address = user_address;
		this.user_phone = user_phone;
		this.user_date = user_date;
	}
	public UsersVO(String users_id) {
		this.user_id = users_id;
	}
	
	public int getUser_seq() {
		return user_seq;
	}
	public String getUser_id() {
		return user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public String getUser_address() {
		return user_address;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public String getUser_date() {
		return user_date;
	}
}