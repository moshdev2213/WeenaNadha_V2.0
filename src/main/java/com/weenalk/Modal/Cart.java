package com.weenalk.Modal;

public class Cart extends Product {
	private int quantity;
	private Double cartprice;
	public Double getCartPrice() {
		return cartprice;
	}
	public void setCartPrice(Double cartprice) {
		this.cartprice = cartprice;
	}
	public Cart() {
		
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity=quantity;
	}
}
