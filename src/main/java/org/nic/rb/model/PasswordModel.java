package org.nic.rb.model;

import java.io.Serializable;

public class PasswordModel implements Serializable{

	private static final long serialVersionUID = -3118902969456306503L;
	
	private String old_pass;
	private String new_pass;
	private String conf_new_pass;
	
	public String getNew_pass() {
		return new_pass;
	}
	public void setNew_pass(String new_pass) {
		this.new_pass = new_pass;
	}
	public String getConf_new_pass() {
		return conf_new_pass;
	}
	public void setConf_new_pass(String conf_new_pass) {
		this.conf_new_pass = conf_new_pass;
	}
	public String getOld_pass() {
		return old_pass;
	}
	public void setOld_pass(String old_pass) {
		this.old_pass = old_pass;
	}
}
