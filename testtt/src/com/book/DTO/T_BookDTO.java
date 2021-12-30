package com.book.DTO;

public class T_BookDTO {

	private int book_seq;
	private String book_nmae = null;
	private int book_price;
	private int book_grade;
	private String book_publisher = null;
	private String book_category = null;
	private String book_explain = null;
	private String book_author = null;
	private int book_pages;
	private String book_img = null;
	private String book_isbn = null;
	private String book_brief = null;
	private String book_date;
	private String mem_id = null;

	public T_BookDTO( String book_nmae, int book_price, int book_grade, String book_publisher,
			String book_category, String book_explain, String book_author, int book_pages, String book_img,
			String book_isbn, String book_brief, String book_date) {
		super();
		this.book_nmae = book_nmae;
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
		this.book_date = book_date;
	}

	public int getBook_seq() {
		return book_seq;
	}

	public void setBook_seq(int book_seq) {
		this.book_seq = book_seq;
	}

	public String getBook_nmae() {
		return book_nmae;
	}

	public void setBook_nmae(String book_nmae) {
		this.book_nmae = book_nmae;
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

	public String getBook_date() {
		return book_date;
	}

	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

}
