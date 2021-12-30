package com.book.DTO;

public class T_EvaluationDTO {

	private String mem_id = null;
	private int book_seq;
	private int mem_point;
	private String mem_comment = null;
	private String wish_yn = null;
	private String read_yn = null;
	
	public T_EvaluationDTO(String mem_id, int book_seq, int mem_point, String mem_comment, String wish_yn,
			String read_yn) {
		super();
		this.mem_id = mem_id;
		this.book_seq = book_seq;
		this.mem_point = mem_point;
		this.mem_comment = mem_comment;
		this.wish_yn = wish_yn;
		this.read_yn = read_yn;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getBook_seq() {
		return book_seq;
	}
	public void setBook_seq(int book_seq) {
		this.book_seq = book_seq;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public String getMem_comment() {
		return mem_comment;
	}
	public void setMem_comment(String mem_comment) {
		this.mem_comment = mem_comment;
	}
	public String getWish_yn() {
		return wish_yn;
	}
	public void setWish_yn(String wish_yn) {
		this.wish_yn = wish_yn;
	}
	public String getRead_yn() {
		return read_yn;
	}
	public void setRead_yn(String read_yn) {
		this.read_yn = read_yn;
	}
	
}
