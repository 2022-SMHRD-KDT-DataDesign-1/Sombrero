package com.som.model;

public class ApproveVO {
	
	private int approve_seq;
	private int order_seq;
	private int approve_number;
	private int approve_card;
	private int approve_price;
	private int approve_transfer_user;
	private int approve_date;
	public ApproveVO() {
		super();
	}
	public ApproveVO(int approve_seq, int order_seq, int approve_number, int approve_card, int approve_price,
			int approve_transfer_user, int approve_date) {
		super();
		this.approve_seq = approve_seq;
		this.order_seq = order_seq;
		this.approve_number = approve_number;
		this.approve_card = approve_card;
		this.approve_price = approve_price;
		this.approve_transfer_user = approve_transfer_user;
		this.approve_date = approve_date;
	}
	
	public int getApprove_seq() {
		return approve_seq;
	}
	public int getOrder_seq() {
		return order_seq;
	}
	public int getApprove_number() {
		return approve_number;
	}
	public int getApprove_card() {
		return approve_card;
	}
	public int getApprove_price() {
		return approve_price;
	}
	public int getApprove_transfer_user() {
		return approve_transfer_user;
	}
	public int getApprove_date() {
		return approve_date;
	}
	
	
	
	
}
