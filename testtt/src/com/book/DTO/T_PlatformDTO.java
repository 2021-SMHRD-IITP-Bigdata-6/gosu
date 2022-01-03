package com.book.DTO;

public class T_PlatformDTO {
	
	
	private String platform_name = null;
	private String platform_img = null;
	private String platform_url = null;
	private String isbn = null;
	private String book_name = null;
	public T_PlatformDTO(String platform_name, String platform_url, String platform_img, String isbn,
			String book_name) {
		super();
		this.platform_name = platform_name;
		this.platform_url = platform_url;
		this.platform_img = platform_img;
		this.isbn = isbn;
		this.book_name = book_name;
	}
	public String getPlatform_name() {
		return platform_name;
	}
	public void setPlatform_name(String platform_name) {
		this.platform_name = platform_name;
	}
	public String getPlatform_url() {
		return platform_url;
	}
	public void setPlatform_url(String platform_url) {
		this.platform_url = platform_url;
	}
	public String getPlatform_img() {
		return platform_img;
	}
	public void setPlatform_img(String platform_img) {
		this.platform_img = platform_img;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	
	
}
