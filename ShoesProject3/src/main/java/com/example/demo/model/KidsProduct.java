package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class KidsProduct {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String productName;
	String price;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getPrice() {
		return price;
	}
	@Override
	public String toString() {
		return "KidsProduct [id=" + id + ", productName=" + productName + ", price=" + price + "]";
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}