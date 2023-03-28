package com.som.model;

public class InquiryVO {

	private int inquiry_seq;
	private int user_seq;
	private String inquiry_title;
	private String inquiry_content;
	private String inquiry_date;
	public InquiryVO(int inquiry_seq, int user_seq, String inquiry_title, String inquiry_content, String inquiry_date) {
		super();
		this.inquiry_seq = inquiry_seq;
		this.user_seq = user_seq;
		this.inquiry_title = inquiry_title;
		this.inquiry_content = inquiry_content;
		this.inquiry_date = inquiry_date;
	}
	public int getInquiry_seq() {
		return inquiry_seq;
	}
	public int getUser_seq() {
		return user_seq;
	}
	public String getInquiry_title() {
		return inquiry_title;
	}
	public String getInquiry_content() {
		return inquiry_content;
	}
	public String getInquiry_date() {
		return inquiry_date;
	}
	
	
	
}
