package com.member.DTO;

public class MypageDTO {
	String mem_id;
	String mem_pw;
	String mem_name;
	String mem_tel;
	String mem_age;
	String mem_gender;
	String date;
	public MypageDTO(String mem_id, String mem_pw, String mem_name, String mem_tel, String mem_age, String mem_gender,
			String date) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_tel = mem_tel;
		this.mem_age = mem_age;
		this.mem_gender = mem_gender;
		this.date = date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	public String getMem_age() {
		return mem_age;
	}
	public void setMem_age(String mem_age) {
		this.mem_age = mem_age;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
