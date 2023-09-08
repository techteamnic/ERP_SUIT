package org.nic.rb.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class ActionAppModel implements Serializable{

	private static final long serialVersionUID = 8333990737747102375L;
	
	private Integer visit_id;
	
	private Integer appl_status;
    private Integer appl_forward_to;
    private String appl_status_remark;
	private boolean letter_sent;
	
	//Appoint confirmation
	private String appoint_date;
	private String appoint_time;
	private String appl_appv_status_remark;
	
	private MultipartFile appoint_file;
	
	
	public Integer getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(Integer visit_id) {
		this.visit_id = visit_id;
	}
	public Integer getAppl_status() {
		return appl_status;
	}
	public void setAppl_status(Integer appl_status) {
		this.appl_status = appl_status;
	}
	public Integer getAppl_forward_to() {
		return appl_forward_to;
	}
	public void setAppl_forward_to(Integer appl_forward_to) {
		this.appl_forward_to = appl_forward_to;
	}
	public String getAppl_status_remark() {
		return appl_status_remark;
	}
	public void setAppl_status_remark(String appl_status_remark) {
		this.appl_status_remark = appl_status_remark;
	}
	public boolean isLetter_sent() {
		return letter_sent;
	}
	public void setLetter_sent(boolean letter_sent) {
		this.letter_sent = letter_sent;
	}
	public String getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(String appoint_date) {
		this.appoint_date = appoint_date;
	}
	public String getAppoint_time() {
		return appoint_time;
	}
	public void setAppoint_time(String appoint_time) {
		this.appoint_time = appoint_time;
	}
	public String getAppl_appv_status_remark() {
		return appl_appv_status_remark;
	}
	public void setAppl_appv_status_remark(String appl_appv_status_remark) {
		this.appl_appv_status_remark = appl_appv_status_remark;
	}
	public MultipartFile getAppoint_file() {
		return appoint_file;
	}
	public void setAppoint_file(MultipartFile appoint_file) {
		this.appoint_file = appoint_file;
	}
	@Override
	public String toString() {
		return "ActionAppModel [visit_id=" + visit_id + ", appl_status=" + appl_status + ", appl_forward_to="
				+ appl_forward_to + ", appl_status_remark=" + appl_status_remark + ", letter_sent=" + letter_sent
				+ ", appoint_date=" + appoint_date + ", appoint_time=" + appoint_time + ", appl_appv_status_remark="
				+ appl_appv_status_remark + "]";
	}
}
