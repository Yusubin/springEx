package com.hi.mvcProject;

public class ProductVO {
	public String getId() {
		return id;
	}
	@Override
	public String toString() {
		return "ProductVO [id=" + id + ", name=" + name + ", content=" + content + ", company=" + company + ", price="
				+ price + ", img=" + img + "]";
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	private String id;
	private String name;
	private String content;
	private String company;
	private int price;
	private String img;
	
}
