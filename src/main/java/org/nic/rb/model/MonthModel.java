package org.nic.rb.model;

import java.io.Serializable;

public class MonthModel implements Serializable{
	
	private static final long serialVersionUID = -8530589234705318347L;
	
	private Integer month_id;
	private String month_val;
	
	public MonthModel(Integer month_id, String month_val) {
		super();
		this.month_id = month_id;
		this.month_val = month_val;
	}
	public Integer getMonth_id() {
		return month_id;
	}
	public void setMonth_id(Integer month_id) {
		this.month_id = month_id;
	}
	public String getMonth_val() {
		return month_val;
	}
	public void setMonth_val(String month_val) {
		this.month_val = month_val;
	}
}