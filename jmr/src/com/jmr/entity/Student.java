package com.jmr.entity;

import java.lang.Integer;
import java.lang.String;
import java.lang.Integer;
import java.util.Date;

public class Student{
    private Integer id;
    private String name;
    private Integer sex;
    private Date registTime;

    public Student() {
		super();
	}

    public Student(Integer id, String name, Integer sex, Date registTime) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.registTime = registTime;
	}
	
    public Integer getId() {
		return id;
	}
	
	public void setId(Integer id){
		this.id = id;
	}
	
    public String getName() {
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
    public Integer getSex() {
		return sex;
	}
	
	public void setSex(Integer sex){
		this.sex = sex;
	}
	
    public Date getRegistTime() {
		return registTime;
	}
	
	public void setRegistTime(Date registTime){
		this.registTime = registTime;
	}
	
}