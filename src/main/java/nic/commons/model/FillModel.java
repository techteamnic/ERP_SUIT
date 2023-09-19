package nic.commons.model;

import java.io.Serializable;

public class FillModel implements Serializable{

	private static final long serialVersionUID = -266043415057993514L;
	
	private boolean personal_info;
	private boolean addrdetails;
	private boolean educational_details;
	private boolean work_experience;
	private boolean documents;
	
	private boolean payment_annual_subcrpn;

	public boolean isPersonal_info() {
		return personal_info;
	}

	public void setPersonal_info(boolean personal_info) {
		this.personal_info = personal_info;
	}

	public boolean isAddrdetails() {
		return addrdetails;
	}

	public void setAddrdetails(boolean addrdetails) {
		this.addrdetails = addrdetails;
	}

	public boolean isEducational_details() {
		return educational_details;
	}

	public void setEducational_details(boolean educational_details) {
		this.educational_details = educational_details;
	}

	public boolean isWork_experience() {
		return work_experience;
	}

	public void setWork_experience(boolean work_experience) {
		this.work_experience = work_experience;
	}

	public boolean isDocuments() {
		return documents;
	}

	public void setDocuments(boolean documents) {
		this.documents = documents;
	}

	public boolean isPayment_annual_subcrpn() {
		return payment_annual_subcrpn;
	}

	public void setPayment_annual_subcrpn(boolean payment_annual_subcrpn) {
		this.payment_annual_subcrpn = payment_annual_subcrpn;
	}

	
	
}
