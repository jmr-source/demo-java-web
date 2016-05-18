
package com.jmr.entity;

public class News{

	private Integer id;

	private String subject_eng;

	private String content_eng;

	public void setId(Integer id){
		this.id = id;
	}  
	public Integer getId() {
		return id;
	}

	public void setSubject_eng(String subject_eng){
		this.subject_eng = subject_eng;
	}  
	public String getSubject_eng() {
		return subject_eng;
	}
	public void setContent_eng(String content_eng){
		this.content_eng = content_eng;
	}  
	public String getContent_eng() {
		return content_eng;
	}

}
