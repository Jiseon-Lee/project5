package com.banchan.dto;

public class ProductVO {
	private int code;
	private String productName;
	private int price;
	private String description;
	private String pictureUrl;
	private String issell;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPictureUrl() {
		return pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

	public String getIssell() {
		return issell;
	}

	public void setIssell(String issell) {
		this.issell = issell;
	}

	@Override
	public String toString() {
		return "ProductVO [code=" + code + ", productName=" + productName + ", price=" + price + ", description="
				+ description + ", pictureUrl=" + pictureUrl + ", issell=" + issell + "]";
	}
}
