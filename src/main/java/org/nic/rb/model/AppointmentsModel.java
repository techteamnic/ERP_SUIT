package org.nic.rb.model;

import java.io.Serializable;
import java.util.Date;

public class AppointmentsModel implements Serializable{
	
	private static final long serialVersionUID = -7178709084736538297L;
	
	private Integer visit_id;
	private String application_no;
	private String applicant_name;
	private String applicant_type;
	private String purpose_visit;
	private Date reg_date;
	private Date pref_date_1;
	private Date pref_date_2;
	private Date pref_date_3;
//	private Integer appl_status;
	private String support_doc_id;
	private String message_doc_id;
	private Date appoint_date;
	private String org_evnt_celb_doc_id;
	
	public String getApplicant_name() {
		return applicant_name;
	}
	public void setApplicant_name(String applicant_name) {
		this.applicant_name = applicant_name;
	}
	public String getApplication_no() {
		return application_no;
	}
	public void setApplication_no(String application_no) {
		this.application_no = application_no;
	}
	public String getApplicant_type() {
		return applicant_type;
	}
	public void setApplicant_type(String applicant_type) {
		this.applicant_type = applicant_type;
	}
	public String getPurpose_visit() {
		return purpose_visit;
	}
	public void setPurpose_visit(String purpose_visit) {
		this.purpose_visit = purpose_visit;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Integer getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(Integer visit_id) {
		this.visit_id = visit_id;
	}
	/*public Integer getAppl_status() {
		return appl_status;
	}
	public void setAppl_status(Integer appl_status) {
		this.appl_status = appl_status;
	}*/
	public String getSupport_doc_id() {
		return support_doc_id;
	}
	public void setSupport_doc_id(String support_doc_id) {
		this.support_doc_id = support_doc_id;
	}
	public String getMessage_doc_id() {
		return message_doc_id;
	}
	public void setMessage_doc_id(String message_doc_id) {
		this.message_doc_id = message_doc_id;
	}
	public Date getPref_date_1() {
		return pref_date_1;
	}
	public void setPref_date_1(Date pref_date_1) {
		this.pref_date_1 = pref_date_1;
	}
	public Date getPref_date_2() {
		return pref_date_2;
	}
	public void setPref_date_2(Date pref_date_2) {
		this.pref_date_2 = pref_date_2;
	}
	public Date getPref_date_3() {
		return pref_date_3;
	}
	public void setPref_date_3(Date pref_date_3) {
		this.pref_date_3 = pref_date_3;
	}
	public Date getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(Date appoint_date) {
		this.appoint_date = appoint_date;
	}
	public String getOrg_evnt_celb_doc_id() {
		return org_evnt_celb_doc_id;
	}
	public void setOrg_evnt_celb_doc_id(String org_evnt_celb_doc_id) {
		this.org_evnt_celb_doc_id = org_evnt_celb_doc_id;
	}
}
