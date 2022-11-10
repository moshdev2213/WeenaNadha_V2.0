package com.weenalk.Modal;

public class Product {
	private int id;
	private String name;
	private String description;
	private String design;
	private int weight;
	private int category_ID;
	private String color;
	private int stock;
	private Double price;
	private String deal;
	private Double mrp;
	private int shipping;
	private String warranty;
	private String img;
	private String category_name;
	
	public Product() {
		
	}
	
	
	
	public Product(int id, String name, String description, String design, int weight, int category_ID, String color,
			int stock, Double price, String deal, Double mrp, int shipping, String warranty,String img,String category_name) {
		
		this.id = id;
		this.name = name;
		this.description = description;
		this.design = design;
		this.weight = weight;
		this.category_ID = category_ID;
		this.color = color;
		this.stock = stock;
		this.price = price;
		this.deal = deal;
		this.mrp = mrp;
		this.shipping = shipping;
		this.warranty = warranty;
		this.img = img;
		this.category_name = category_name;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDesign() {
		return design;
	}
	public void setDesign(String design) {
		this.design = design;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getCategory_ID() {
		return category_ID;
	}
	public void setCategory_ID(int category_ID) {
		this.category_ID = category_ID;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getDeal() {
		return deal;
	}
	public void setDeal(String deal) {
		this.deal = deal;
	}
	public Double getMrp() {
		return mrp;
	}
	public void setMrp(Double mrp) {
		this.mrp = mrp;
	}
	public int getShipping() {
		return shipping;
	}
	public void setShipping(int shipping) {
		this.shipping = shipping;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	
}	
