package com.book.DTO;

public class T_EvaluationDTO {
	
	private String mem_id;
	private String wish_yn;
	private int book_seq;
	private String book_isbn;
	
	public T_EvaluationDTO(String mem_id, String wish_yn, int book_seq, String book_isbn) {
		super();
		this.mem_id = mem_id;
		this.wish_yn = wish_yn;
		this.book_seq = book_seq;
		this.book_isbn = book_isbn;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getWish_yn() {
		return wish_yn;
	}

	public void setWish_yn(String wish_yn) {
		this.wish_yn = wish_yn;
	}

	public int getBook_seq() {
		return book_seq;
	}

	public void setBook_seq(int book_seq) {
		this.book_seq = book_seq;
	}

	public String getBook_isbn() {
		return book_isbn;
	}

	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}


}