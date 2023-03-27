package com.som.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class ProductsVO {
	private BigDecimal product_seq;
	private BigDecimal cate_seq;
	private BigDecimal photo_seq;
	private String product_name;
	private BigDecimal product_price;
	private String product_content;
	private Timestamp product_date;
	private BigDecimal product_have;
	private BigDecimal product_rent;
	private BigDecimal product_rest;
	
	
	public ProductsVO(BigDecimal product_seq, BigDecimal cate_seq, BigDecimal photo_seq, String product_name,
			BigDecimal product_price, String product_content, Timestamp product_date, BigDecimal product_have,
			BigDecimal product_rent, BigDecimal product_rest) {
		super();
		this.product_seq = product_seq;
		this.cate_seq = cate_seq;
		this.photo_seq = photo_seq;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_content = product_content;
		this.product_date = product_date;
		this.product_have = product_have;
		this.product_rent = product_rent;
		this.product_rest = product_rest;
	}


	public BigDecimal getProduct_seq() {
		return product_seq;
	}


	public BigDecimal getCate_seq() {
		return cate_seq;
	}


	public BigDecimal getPhoto_seq() {
		return photo_seq;
	}


	public String getProduct_name() {
		return product_name;
	}


	public BigDecimal getProduct_price() {
		return product_price;
	}


	public String getProduct_content() {
		return product_content;
	}


	public Timestamp getProduct_date() {
		return product_date;
	}


	public BigDecimal getProduct_have() {
		return product_have;
	}


	public BigDecimal getProduct_rent() {
		return product_rent;
	}


	public BigDecimal getProduct_rest() {
		return product_rest;
	}
	
	
	
	
}
