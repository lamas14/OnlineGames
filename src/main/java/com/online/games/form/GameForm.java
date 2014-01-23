package com.online.games.form;

import java.util.Arrays;

public class GameForm {

	private int id;
	private String title;
	private String publisher;
	private String platform;
	private double price;
	private String description;
	private String category;
	private String pictureName;
	private byte[] picture;
	private int rating;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "GameForm [id=" + id + ", title=" + title + ", publisher="
				+ publisher + ", platform=" + platform + ", price=" + price
				+ ", description=" + description + ", category=" + category
				+ ", pictureName=" + pictureName + ", picture="
				+ Arrays.toString(picture) + ", rating=" + rating + "]";
	}

}
