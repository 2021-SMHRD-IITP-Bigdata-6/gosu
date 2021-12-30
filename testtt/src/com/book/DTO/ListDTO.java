package com.book.DTO;

public class ListDTO {
		
	private int book_seq;
	private String book_name;
	private int book_price;
	private int book_grade;
	private String book_publisher;
	private String book_category;
	private String book_explain;
	private String book_author;
	private int book_pages;
	private String book_img;
	private String book_isbn;
	private String book_brief;
	String reg_date;
	private String mem_id;
	
	
	public ListDTO(int book_seq, String book_name, int book_price, int book_grade, String book_publisher,
			String book_category, String book_explain, String book_author, int book_pages, String book_img,
			String book_isbn, String book_brief, String reg_date, String mem_id) {
		
		
		this.book_seq = book_seq;
		this.book_name = book_name;
		this.book_price = book_price;
		this.book_grade = book_grade;
		this.book_publisher = book_publisher;
		this.book_category = book_category;
		this.book_explain = book_explain;
		this.book_author = book_author;
		this.book_pages = book_pages;
		this.book_img = book_img;
		this.book_isbn = book_isbn;
		this.book_brief = book_brief;
		this.reg_date = reg_date;
		this.mem_id = mem_id;


	
	}
	public ListDTO(String book_name, int book_price, int book_grade, String book_publisher, String book_category,
			String book_author) {
		super();
		this.book_name = book_name;
		this.book_price = book_price;
		this.book_grade = book_grade;
		this.book_publisher = book_publisher;
		this.book_category = book_category;
		this.book_author = book_author;
	}
	public int getBook_seq() {
		return book_seq;
	}
	public void setBook_seq(int book_seq) {
		this.book_seq = book_seq;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public int getBook_grade() {
		return book_grade;
	}
	public void setBook_grade(int book_grade) {
		this.book_grade = book_grade;
	}
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	public String getBook_category() {
		return book_category;
	}
	public void setBook_category(String book_category) {
		this.book_category = book_category;
	}
	public String getBook_explain() {
		return book_explain;
	}
	public void setBook_explain(String book_explain) {
		this.book_explain = book_explain;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public int getBook_pages() {
		return book_pages;
	}
	public void setBook_pages(int book_pages) {
		this.book_pages = book_pages;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public String getBook_brief() {
		return book_brief;
	}
	public void setBook_brief(String book_brief) {
		this.book_brief = book_brief;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

}