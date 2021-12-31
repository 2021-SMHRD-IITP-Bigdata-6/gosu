package com.book.DTO;

public class T_EvaluationDTO {
	
	private String mem_id;
	private String wish_yn;
	
	public T_EvaluationDTO(String mem_id, String wish_yn) {
		super();
		this.mem_id = mem_id;
		this.wish_yn = wish_yn;
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
	
		
}