package org.nic.rb.model;

import java.io.Serializable;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class AppointmentModel implements Serializable{
	
	private static final long serialVersionUID = 3753676215511468495L;
	
	private String visitor_id;
	private String application_id;
	
//	@NotNull(message="Applicant Type is Required.")
	private String applicant_type;
//	@NotNull(message="Purpose of Visit is Required.")
	private String purpose_visit;
//	@NotBlank(message="Applicant Name is Required.")
	private String applicant_name;
	private String applicant_id_no;
	private String gender;
	private String district;
	private String district_other;
	private String full_address;
	private String pincode;
	private String identity_type;
	private String mobile_no;
	private String alternate_no;
	private String email;
	private String pref_date_1;
	private String pref_date_2;
	private String pref_date_3;
	private MultipartFile visitor_document;
	private String visit_description;
	private MultipartFile visit_support_document;
	
	private String department;
	private String designation;
	
	//organization
	private String organisation_name;
	private String org_reg_number;
	
	//political
	private String political_party_name;
	private String party_reg_number;
	
	// event
	private String event_name;
	private String event_description;
	private String event_location;
	private String event_type_invitation;
	private String event_coordinator_name;
	private String event_coordinator_mobile;
	private String dais_sharing_no;
	private String dais_sharing_names;
	private MultipartFile event_desc_document;
	private String event_expected_audience;
	private String event_audiance_type;
	private String event_date;
	private String event_time;
	private String event_duration;
	/*private String inivited_as;
	private String event_rb_remarks;
	private String event_speech_notes;
	private String event_dais_plan;*/
	
	// additional_visitors
//	private Integer additional_visitors;
	private String[] addl_visitor_name;
	private String[] addl_visitor_identity_type; 
	private String[] addl_visitor_id_number;
	private String[] addl_visitor_mobile;
	private MultipartFile[] addl_visitor_document;
	
	// additional validations
	private String otp;
	private String captcha;
	
	//Mode of Reciept
	private String receipt_mode;
    private String receipt_by;
    private String receipt_date;
    private String receipt_remarks;
    
    
    //Others
    private String applicant_type_name;
    private String purpose_visit_name;
    
    
    // newly Added field after 1st revision
    private String party_designation;
    private String organisation_type;
    
    // message
    private String msg_sought_for;
    private MultipartFile org_evnt_celb_document;
    private MultipartFile draft_document;
    
    private String event_chief_guest_desc;
    
	
	public String getApplicant_name() {
		return applicant_name;
	}
	public void setApplicant_name(String applicant_name) {
		this.applicant_name = applicant_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDistrict_other() {
		return district_other;
	}
	public void setDistrict_other(String district_other) {
		this.district_other = district_other;
	}
	public String getFull_address() {
		return full_address;
	}
	public void setFull_address(String full_address) {
		this.full_address = full_address;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getAlternate_no() {
		return alternate_no;
	}
	public void setAlternate_no(String alternate_no) {
		this.alternate_no = alternate_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPref_date_1() {
		return pref_date_1;
	}
	public void setPref_date_1(String pref_date_1) {
		this.pref_date_1 = pref_date_1;
	}
	public String getPref_date_2() {
		return pref_date_2;
	}
	public void setPref_date_2(String pref_date_2) {
		this.pref_date_2 = pref_date_2;
	}
	public String getPref_date_3() {
		return pref_date_3;
	}
	public void setPref_date_3(String pref_date_3) {
		this.pref_date_3 = pref_date_3;
	}
	public MultipartFile getVisitor_document() {
		return visitor_document;
	}
	public void setVisitor_document(MultipartFile visitor_document) {
		this.visitor_document = visitor_document;
	}
	public String getVisit_description() {
		return visit_description;
	}
	public void setVisit_description(String visit_description) {
		this.visit_description = visit_description;
	}
	public MultipartFile getVisit_support_document() {
		return visit_support_document;
	}
	public void setVisit_support_document(MultipartFile visit_support_document) {
		this.visit_support_document = visit_support_document;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getOrganisation_name() {
		return organisation_name;
	}
	public void setOrganisation_name(String organisation_name) {
		this.organisation_name = organisation_name;
	}
	public String getOrg_reg_number() {
		return org_reg_number;
	}
	public void setOrg_reg_number(String org_reg_number) {
		this.org_reg_number = org_reg_number;
	}
	public String getPolitical_party_name() {
		return political_party_name;
	}
	public void setPolitical_party_name(String political_party_name) {
		this.political_party_name = political_party_name;
	}
	public String getParty_reg_number() {
		return party_reg_number;
	}
	public void setParty_reg_number(String party_reg_number) {
		this.party_reg_number = party_reg_number;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getEvent_description() {
		return event_description;
	}
	public void setEvent_description(String event_description) {
		this.event_description = event_description;
	}
	public String getEvent_location() {
		return event_location;
	}
	public void setEvent_location(String event_location) {
		this.event_location = event_location;
	}
	public String getEvent_coordinator_name() {
		return event_coordinator_name;
	}
	public void setEvent_coordinator_name(String event_coordinator_name) {
		this.event_coordinator_name = event_coordinator_name;
	}
	public String getEvent_coordinator_mobile() {
		return event_coordinator_mobile;
	}
	public void setEvent_coordinator_mobile(String event_coordinator_mobile) {
		this.event_coordinator_mobile = event_coordinator_mobile;
	}
	public String getDais_sharing_names() {
		return dais_sharing_names;
	}
	public void setDais_sharing_names(String dais_sharing_names) {
		this.dais_sharing_names = dais_sharing_names;
	}
	public MultipartFile getEvent_desc_document() {
		return event_desc_document;
	}
	public void setEvent_desc_document(MultipartFile event_desc_document) {
		this.event_desc_document = event_desc_document;
	}
	public String getEvent_audiance_type() {
		return event_audiance_type;
	}
	public void setEvent_audiance_type(String event_audiance_type) {
		this.event_audiance_type = event_audiance_type;
	}
	public String getEvent_date() {
		return event_date;
	}
	public void setEvent_date(String event_date) {
		this.event_date = event_date;
	}
	public String getEvent_time() {
		return event_time;
	}
	public void setEvent_time(String event_time) {
		this.event_time = event_time;
	}
	public String getEvent_duration() {
		return event_duration;
	}
	public void setEvent_duration(String event_duration) {
		this.event_duration = event_duration;
	}
	/*public Integer getAdditional_visitors() {
		return additional_visitors;
	}
	public void setAdditional_visitors(Integer additional_visitors) {
		this.additional_visitors = additional_visitors;
	}*/
	public String[] getAddl_visitor_name() {
		return addl_visitor_name;
	}
	public void setAddl_visitor_name(String[] addl_visitor_name) {
		this.addl_visitor_name = addl_visitor_name;
	}
	public String[] getAddl_visitor_identity_type() {
		return addl_visitor_identity_type;
	}
	public void setAddl_visitor_identity_type(String[] addl_visitor_identity_type) {
		this.addl_visitor_identity_type = addl_visitor_identity_type;
	}
	public String[] getAddl_visitor_id_number() {
		return addl_visitor_id_number;
	}
	public void setAddl_visitor_id_number(String[] addl_visitor_id_number) {
		this.addl_visitor_id_number = addl_visitor_id_number;
	}
	public String[] getAddl_visitor_mobile() {
		return addl_visitor_mobile;
	}
	public void setAddl_visitor_mobile(String[] addl_visitor_mobile) {
		this.addl_visitor_mobile = addl_visitor_mobile;
	}
	public MultipartFile[] getAddl_visitor_document() {
		return addl_visitor_document;
	}
	public void setAddl_visitor_document(MultipartFile[] addl_visitor_document) {
		this.addl_visitor_document = addl_visitor_document;
	}
	
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
	public String getVisitor_id() {
		return visitor_id;
	}
	public void setVisitor_id(String visitor_id) {
		this.visitor_id = visitor_id;
	}
	public String getReceipt_by() {
		return receipt_by;
	}
	public void setReceipt_by(String receipt_by) {
		this.receipt_by = receipt_by;
	}
	public String getReceipt_date() {
		return receipt_date;
	}
	public void setReceipt_date(String receipt_date) {
		this.receipt_date = receipt_date;
	}
	public String getReceipt_remarks() {
		return receipt_remarks;
	}
	public void setReceipt_remarks(String receipt_remarks) {
		this.receipt_remarks = receipt_remarks;
	}
	public String getApplication_id() {
		return application_id;
	}
	public void setApplication_id(String application_id) {
		this.application_id = application_id;
	}
	public String getApplicant_type_name() {
		return applicant_type_name;
	}
	public void setApplicant_type_name(String applicant_type_name) {
		this.applicant_type_name = applicant_type_name;
	}
	public String getPurpose_visit_name() {
		return purpose_visit_name;
	}
	public void setPurpose_visit_name(String purpose_visit_name) {
		this.purpose_visit_name = purpose_visit_name;
	}
	public String getApplicant_id_no() {
		return applicant_id_no;
	}
	public void setApplicant_id_no(String applicant_id_no) {
		this.applicant_id_no = applicant_id_no;
	}
	public String getParty_designation() {
		return party_designation;
	}
	public void setParty_designation(String party_designation) {
		this.party_designation = party_designation;
	}
	public String getOrganisation_type() {
		return organisation_type;
	}
	public void setOrganisation_type(String organisation_type) {
		this.organisation_type = organisation_type;
	}
	public String getMsg_sought_for() {
		return msg_sought_for;
	}
	public void setMsg_sought_for(String msg_sought_for) {
		this.msg_sought_for = msg_sought_for;
	}
	public MultipartFile getDraft_document() {
		return draft_document;
	}
	public void setDraft_document(MultipartFile draft_document) {
		this.draft_document = draft_document;
	}
	public String getEvent_chief_guest_desc() {
		return event_chief_guest_desc;
	}
	public void setEvent_chief_guest_desc(String event_chief_guest_desc) {
		this.event_chief_guest_desc = event_chief_guest_desc;
	}
	public MultipartFile getOrg_evnt_celb_document() {
		return org_evnt_celb_document;
	}
	public void setOrg_evnt_celb_document(MultipartFile org_evnt_celb_document) {
		this.org_evnt_celb_document = org_evnt_celb_document;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getIdentity_type() {
		return identity_type;
	}
	public void setIdentity_type(String identity_type) {
		this.identity_type = identity_type;
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
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getEvent_type_invitation() {
		return event_type_invitation;
	}
	public void setEvent_type_invitation(String event_type_invitation) {
		this.event_type_invitation = event_type_invitation;
	}
	public String getDais_sharing_no() {
		return dais_sharing_no;
	}
	public void setDais_sharing_no(String dais_sharing_no) {
		this.dais_sharing_no = dais_sharing_no;
	}
	public String getEvent_expected_audience() {
		return event_expected_audience;
	}
	public void setEvent_expected_audience(String event_expected_audience) {
		this.event_expected_audience = event_expected_audience;
	}
	public String getReceipt_mode() {
		return receipt_mode;
	}
	public void setReceipt_mode(String receipt_mode) {
		this.receipt_mode = receipt_mode;
	}
	@Override
	public String toString() {
		return "AppointmentModel [visitor_id=" + visitor_id + ", application_id=" + application_id + ", applicant_type="
				+ applicant_type + ", purpose_visit=" + purpose_visit + ", applicant_name=" + applicant_name
				+ ", applicant_id_no=" + applicant_id_no + ", gender=" + gender + ", district=" + district
				+ ", district_other=" + district_other + ", full_address=" + full_address + ", pincode=" + pincode
				+ ", identity_type=" + identity_type + ", mobile_no=" + mobile_no + ", alternate_no=" + alternate_no
				+ ", email=" + email + ", pref_date_1=" + pref_date_1 + ", pref_date_2=" + pref_date_2
				+ ", pref_date_3=" + pref_date_3 + ", visitor_document=" + visitor_document + ", visit_description="
				+ visit_description + ", visit_support_document=" + visit_support_document + ", department="
				+ department + ", designation=" + designation + ", organisation_name=" + organisation_name
				+ ", org_reg_number=" + org_reg_number + ", political_party_name=" + political_party_name
				+ ", party_reg_number=" + party_reg_number + ", event_name=" + event_name + ", event_description="
				+ event_description + ", event_location=" + event_location + ", event_type_invitation="
				+ event_type_invitation + ", event_coordinator_name=" + event_coordinator_name
				+ ", event_coordinator_mobile=" + event_coordinator_mobile + ", dais_sharing_no=" + dais_sharing_no
				+ ", dais_sharing_names=" + dais_sharing_names + ", event_desc_document=" + event_desc_document
				+ ", event_expected_audience=" + event_expected_audience + ", event_audiance_type="
				+ event_audiance_type + ", event_date=" + event_date + ", event_time=" + event_time
				+ ", event_duration=" + event_duration + ", addl_visitor_name=" + Arrays.toString(addl_visitor_name)
				+ ", addl_visitor_id_number=" + Arrays.toString(addl_visitor_id_number) + ", addl_visitor_mobile="
				+ Arrays.toString(addl_visitor_mobile) + ", addl_visitor_document="
				+ Arrays.toString(addl_visitor_document) + ", otp=" + otp + ", captcha=" + captcha + ", receipt_mode="
				+ receipt_mode + ", receipt_by=" + receipt_by + ", receipt_date=" + receipt_date + ", receipt_remarks="
				+ receipt_remarks + ", applicant_type_name=" + applicant_type_name + ", purpose_visit_name="
				+ purpose_visit_name + ", party_designation=" + party_designation + ", organisation_type="
				+ organisation_type + ", msg_sought_for=" + msg_sought_for + ", org_evnt_celb_document="
				+ org_evnt_celb_document + ", draft_document=" + draft_document + ", event_chief_guest_desc="
				+ event_chief_guest_desc + "]";
	}
}
