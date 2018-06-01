package com.bean;

import java.util.Date;

public class Extraworkinfo {
	public String toString(){
		return this.date+"  "+this.name+"  "+this.type+"  "+this.timeb+"  "+this.timee+"  "+this.confirmstatus+"  "+this.pname;
	}
	private String date;
	private String name;
	private int type;
	private String timeb;
	private String timee;
	private String confirmstatus;
	private String pname;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTimeb() {
		return timeb;
	}
	public void setTimeb(String timeb) {
		this.timeb = timeb;
	}
	public String getTimee() {
		return timee;
	}
	public void setTimee(String timee) {
		this.timee = timee;
	}
	public String getConfirmstatus() {
		return confirmstatus;
	}
	public void setConfirmstatus(String confirmstatus) {
		this.confirmstatus = confirmstatus;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
}
