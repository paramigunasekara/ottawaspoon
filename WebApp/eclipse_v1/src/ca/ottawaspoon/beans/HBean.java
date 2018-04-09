package ca.ottawaspoon.beans;

import java.sql.Date;

public class HBean {

	public HBean(String name, Date open_date) {
		super();
		this.name = name;
		this.open_date = open_date;
	}

	private String name;
	private Date open_date;
	
	public HBean() {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getOpen_date() {
		return open_date;
	}

	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}
	
	
}
