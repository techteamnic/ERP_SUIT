package org.nic.rb.model;

import java.io.Serializable;

public class MasterModel implements Serializable{
	
	private static final long serialVersionUID = 8208115322906493582L;
	
	private String id;
	private String mastr_name;
	private String value;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMastr_name() {
		return mastr_name;
	}
	public void setMastr_name(String mastr_name) {
		this.mastr_name = mastr_name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	@Override
	public String toString() {
		return "MasterModel [mastr_name=" + mastr_name + ", value=" + value + "]";
	}
}
