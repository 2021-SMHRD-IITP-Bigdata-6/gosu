package com.category.DAO;

public class categoryDTO {
	private String novel;
	private String poem;
	private String economy;
	private String self_development;
	private String humanities;
	private String history;
	private String politics;
	private String science;
	private String art;
	
	public categoryDTO(String novel, String poem, String economy, String self_development, String humanities,
			String history, String politics, String science, String art) {
		super();
		this.novel = novel;
		this.poem = poem;
		this.economy = economy;
		this.self_development = self_development;
		this.humanities = humanities;
		this.history = history;
		this.politics = politics;
		this.science = science;
		this.art = art;
	}
	
	public categoryDTO(String art) {
		super();
		this.art = art;
	}

	public String getNovel() {
		return novel;
	}
	public void setNovel(String novel) {
		this.novel = novel;
	}
	public String getPoem() {
		return poem;
	}
	public void setPoem(String poem) {
		this.poem = poem;
	}
	public String getEconomy() {
		return economy;
	}
	public void setEconomy(String economy) {
		this.economy = economy;
	}
	public String getSelf_development() {
		return self_development;
	}
	public void setSelf_development(String self_development) {
		this.self_development = self_development;
	}
	public String getHumanities() {
		return humanities;
	}
	public void setHumanities(String humanities) {
		this.humanities = humanities;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	public String getPolitics() {
		return politics;
	}
	public void setPolitics(String politics) {
		this.politics = politics;
	}
	public String getScience() {
		return science;
	}
	public void setScience(String science) {
		this.science = science;
	}
	public String getArt() {
		return art;
	}
	public void setArt(String art) {
		this.art = art;
	}
	
	
}
