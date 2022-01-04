package com.book.DTO;

public class T_PriceDTO {

	private String book_real_price; 
	private String book_place;
	private String book_isbn;
	private String price_name;
	public T_PriceDTO(String book_real_price, String book_place, String book_isbn, String price_name) {
		super();
		this.book_real_price = book_real_price;
		this.book_place = book_place;
		this.book_isbn = book_isbn;
		this.price_name = price_name;
	}
	public String getBook_real_price() {
		return book_real_price;
	}
	public void setBook_real_price(String book_real_price) {
		this.book_real_price = book_real_price;
	}
	public String getBook_place() {
		return book_place;
	}
	public void setBook_place(String book_place) {
		this.book_place = book_place;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public String getPrice_name() {
		return price_name;
	}
	public void setPrice_name(String price_name) {
		this.price_name = price_name;
	}
	
	
}

