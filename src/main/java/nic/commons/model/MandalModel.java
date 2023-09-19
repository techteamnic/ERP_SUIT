package nic.commons.model;

public class MandalModel {
	
	private String mandal_code;
	private String mandal_name;
	
	public String getMandal_code() {
		return mandal_code;
	}
	public void setMandal_code(String mandal_code) {
		this.mandal_code = mandal_code;
	}
	public String getMandal_name() {
		return mandal_name;
	}
	public void setMandal_name(String mandal_name) {
		this.mandal_name = mandal_name;
	}
	@Override
	public String toString() {
		return "MandalModel [mandal_code=" + mandal_code + ", mandal_name="
				+ mandal_name + "]";
	}
	
}
