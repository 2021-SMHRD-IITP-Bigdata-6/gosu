package com.book.DTO;

public class ListDTO {
		
	private String list_name;
	private String list_writer;
	private String list_link;
	private String list_genre;

public ListDTO(String list_name, String list_writer, String list_link, String list_genre) {
		super();
		this.list_name = list_name;
		this.list_writer = list_writer;
		this.list_link = list_link;
		this.list_genre = list_genre;
	}

public String getList_name() {
	return list_name;
}

public void setList_name(String list_name) {
	this.list_name = list_name;
}

public String getList_writer() {
	return list_writer;
}

public void setList_writer(String list_writer) {
	this.list_writer = list_writer;
}

public String getList_link() {
	return list_link;
}

public void setList_link(String list_link) {
	this.list_link = list_link;
}

public String getList_genre() {
	return list_genre;
}

public void setList_genre(String list_genre) {
	this.list_genre = list_genre;
}
	

}
