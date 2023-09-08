package org.nic.rb.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@Entity
@Table(name = "appointments")
public class AppointmentEntity implements Serializable{
	
	private static final long serialVersionUID = 5273118597583646508L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "appointments_id")
	@SequenceGenerator(name = "appointments_id", sequenceName = "appointments_seq", allocationSize = 1)
	@Column(name = "visit_id", nullable = false, unique = true)
	private Integer visit_id;
	@Column(nullable = false, length=21)
	private String application_no;
	private Integer applicant_type;
	@Column(length=20)
	private String applicant_type_name;
	private Integer purpose_visit;
	@Column(length=20)
	private String purpose_visit_name;
	@Column(length=80)
	private String applicant_name;
	@Column(length=20)
	private String applicant_id_no;
	@Column(length=10)
	private String gender;
	private Integer district;
	@Column(length=40)
	private String district_other;
	@Column(length=100)
	private String full_address;
	@Column(length=6)
	private String pincode;
	@Column(length=20)
	private String identity_type;
	@Column(length=10)
	private String mobile_no;
	@Column(length=10)
	private String alternate_no;
	@Column(length=40)
	private String email;
	@Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date pref_date_1;
	@Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date pref_date_2;
	@Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date pref_date_3;
	@Column(length=36)
	private String visitor_doc_id;
	@Column(length=255)
	private String visit_description;
	@Column(length=36)
	private String visit_support_doc_id;
	
	//organization
	@Column(length=80)
	private String organisation_name;
	@Column(length=40)
	private String organisation_type;
	
	//political
	@Column(length=80)
	private String political_party_name;
	@Column(length=40)
	private String party_designation;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "appoint_id")
	@JsonSerialize
	@Column(nullable=true)
	private List<AdditionalVisitorsEntity> add_visitors;
	
	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name="event_id", nullable=true)
	private EventDetailsEntity event_details;
	
	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name="msg_id", nullable=true)
	private MessageDetailsEntity message_details;
	
	@Column(nullable = false, columnDefinition = "boolean default true")
	private Boolean is_active;
	@Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
    private Date reg_date;
    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
    private Date ts;
    @Column(length=20)
    private String ip;
	
    private Integer receipt_mode;
    @Column(length=80)
    private String receipt_by;
    @Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
    private Date receipt_date;
    @Column(length=255)
    private String receipt_remarks;
    private Integer appl_status;
    private Integer appl_forward_to;
    @Column(length=255)
    private String appl_status_remark;
    @Column(length=255)
    private String appl_appv_status_remark;
    @Column(nullable = false, columnDefinition = "boolean default false")
    private boolean letter_sent;
    @Column(nullable = false, columnDefinition = "boolean default false")
    private boolean sms_sent;
    
    @Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
    private Date appoint_date;
    @Column(length=8)
    private String appoint_time;
    
    @Column(length=36)
	private String appoint_msgdoc_id;
    
	public Integer getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(Integer visit_id) {
		this.visit_id = visit_id;
	}
	public Integer getApplicant_type() {
		return applicant_type;
	}
	public void setApplicant_type(Integer applicant_type) {
		this.applicant_type = applicant_type;
	}
	public Integer getPurpose_visit() {
		return purpose_visit;
	}
	public void setPurpose_visit(Integer purpose_visit) {
		this.purpose_visit = purpose_visit;
	}
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
	public Integer getDistrict() {
		return district;
	}
	public void setDistrict(Integer district) {
		this.district = district;
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
	public String getVisit_description() {
		return visit_description;
	}
	public void setVisit_description(String visit_description) {
		this.visit_description = visit_description;
	}
	public String getApplicant_id_no() {
		return applicant_id_no;
	}
	public void setApplicant_id_no(String applicant_id_no) {
		this.applicant_id_no = applicant_id_no;
	}
	public String getVisit_support_doc_id() {
		return visit_support_doc_id;
	}
	public void setVisit_support_doc_id(String visit_support_doc_id) {
		this.visit_support_doc_id = visit_support_doc_id;
	}
	public String getOrganisation_name() {
		return organisation_name;
	}
	public void setOrganisation_name(String organisation_name) {
		this.organisation_name = organisation_name;
	}
	
	public String getPolitical_party_name() {
		return political_party_name;
	}
	public void setPolitical_party_name(String political_party_name) {
		this.political_party_name = political_party_name;
	}
	public String getVisitor_doc_id() {
		return visitor_doc_id;
	}
	public void setVisitor_doc_id(String visitor_doc_id) {
		this.visitor_doc_id = visitor_doc_id;
	}
	public List<AdditionalVisitorsEntity> getAdd_visitors() {
		return add_visitors;
	}
	public void setAdd_visitors(List<AdditionalVisitorsEntity> add_visitors) {
		this.add_visitors = add_visitors;
	}
	public EventDetailsEntity getEvent_details() {
		return event_details;
	}
	public void setEvent_details(EventDetailsEntity event_details) {
		this.event_details = event_details;
	}
	public MessageDetailsEntity getMessage_details() {
		return message_details;
	}
	public void setMessage_details(MessageDetailsEntity message_details) {
		this.message_details = message_details;
	}
	public Boolean getIs_active() {
		return is_active;
	}
	public void setIs_active(Boolean is_active) {
		this.is_active = is_active;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getTs() {
		return ts;
	}
	public void setTs(Date ts) {
		this.ts = ts;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Integer getReceipt_mode() {
		return receipt_mode;
	}
	public void setReceipt_mode(Integer receipt_mode) {
		this.receipt_mode = receipt_mode;
	}
	public boolean isLetter_sent() {
		return letter_sent;
	}
	public void setLetter_sent(boolean letter_sent) {
		this.letter_sent = letter_sent;
	}
	public boolean isSms_sent() {
		return sms_sent;
	}
	public void setSms_sent(boolean sms_sent) {
		this.sms_sent = sms_sent;
	}
	public String getReceipt_by() {
		return receipt_by;
	}
	public void setReceipt_by(String receipt_by) {
		this.receipt_by = receipt_by;
	}
	public Date getReceipt_date() {
		return receipt_date;
	}
	public void setReceipt_date(Date receipt_date) {
		this.receipt_date = receipt_date;
	}
	public String getReceipt_remarks() {
		return receipt_remarks;
	}
	public void setReceipt_remarks(String receipt_remarks) {
		this.receipt_remarks = receipt_remarks;
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
	public String getApplication_no() {
		return application_no;
	}
	public void setApplication_no(String application_no) {
		this.application_no = application_no;
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
	public String getAppl_appv_status_remark() {
		return appl_appv_status_remark;
	}
	public void setAppl_appv_status_remark(String appl_appv_status_remark) {
		this.appl_appv_status_remark = appl_appv_status_remark;
	}
	public Date getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(Date appoint_date) {
		this.appoint_date = appoint_date;
	}
	public String getAppoint_time() {
		return appoint_time;
	}
	public void setAppoint_time(String appoint_time) {
		this.appoint_time = appoint_time;
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
	public String getOrganisation_type() {
		return organisation_type;
	}
	public void setOrganisation_type(String organisation_type) {
		this.organisation_type = organisation_type;
	}
	public String getParty_designation() {
		return party_designation;
	}
	public void setParty_designation(String party_designation) {
		this.party_designation = party_designation;
	}
	
	@Transient
	private String applicant_type_mst;
	@Transient
	private String purpose_visit_mst;
	@Transient
	private String district_mst;
	@Transient
	private String event_type_mst;
	@Transient
	private String print_reg_Date;

	public String getApplicant_type_mst() {
		return applicant_type_mst;
	}
	public void setApplicant_type_mst(String applicant_type_mst) {
		this.applicant_type_mst = applicant_type_mst;
	}
	public String getPurpose_visit_mst() {
		return purpose_visit_mst;
	}
	public void setPurpose_visit_mst(String purpose_visit_mst) {
		this.purpose_visit_mst = purpose_visit_mst;
	}
	public String getDistrict_mst() {
		return district_mst;
	}
	public void setDistrict_mst(String district_mst) {
		this.district_mst = district_mst;
	}
	public String getEvent_type_mst() {
		return event_type_mst;
	}
	public void setEvent_type_mst(String event_type_mst) {
		this.event_type_mst = event_type_mst;
	}
	public String getPrint_reg_Date() {
		return print_reg_Date;
	}
	public void setPrint_reg_Date(String print_reg_Date) {
		this.print_reg_Date = print_reg_Date;
	}
	public String getAppoint_msgdoc_id() {
		return appoint_msgdoc_id;
	}
	public void setAppoint_msgdoc_id(String appoint_msgdoc_id) {
		this.appoint_msgdoc_id = appoint_msgdoc_id;
	}
}
