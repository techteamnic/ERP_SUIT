package org.nic.rb.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "eventdetails")
public class EventDetailsEntity implements Serializable{
	
	private static final long serialVersionUID = 3291713520270553195L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "eventdetails_id")
	@SequenceGenerator(name = "eventdetails_id", sequenceName = "eventdetails_seq", allocationSize = 1)
	@Column(name = "event_id", nullable = false, unique = true)
	private Integer event_id;
	@Column(length=80)
	private String event_name;
	@Column(length=255)
	private String event_description;
	@Column(length=100)
	private String event_location;
	private Integer event_type_invitation;
	@Column(length=80)
	private String event_chief_guest_desc;
	@Column(length=80)
	private String event_coordinator_name;
	@Column(length=10)
	private String event_coordinator_mobile;
	private Integer dais_sharing_no;
	@Column(length=255)
	private String dais_sharing_names;
	@Column(length=36)
	private String event_desc_doc_id;
	private Integer event_expected_audience;
	@Column(length=40)
	private String event_audiance_type;
	@Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date event_date;
	@Column(length=8)
	private String event_time;
	@Column(length=5)
	private String event_duration;
	
	public Integer getEvent_id() {
		return event_id;
	}
	public void setEvent_id(Integer event_id) {
		this.event_id = event_id;
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
	public Integer getEvent_type_invitation() {
		return event_type_invitation;
	}
	public void setEvent_type_invitation(Integer event_type_invitation) {
		this.event_type_invitation = event_type_invitation;
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
	public String getEvent_desc_doc_id() {
		return event_desc_doc_id;
	}
	public void setEvent_desc_doc_id(String event_desc_doc_id) {
		this.event_desc_doc_id = event_desc_doc_id;
	}
	public Integer getEvent_expected_audience() {
		return event_expected_audience;
	}
	public void setEvent_expected_audience(Integer event_expected_audience) {
		this.event_expected_audience = event_expected_audience;
	}
	public String getEvent_audiance_type() {
		return event_audiance_type;
	}
	public void setEvent_audiance_type(String event_audiance_type) {
		this.event_audiance_type = event_audiance_type;
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
	public Integer getDais_sharing_no() {
		return dais_sharing_no;
	}
	public void setDais_sharing_no(Integer dais_sharing_no) {
		this.dais_sharing_no = dais_sharing_no;
	}
	public Date getEvent_date() {
		return event_date;
	}
	public void setEvent_date(Date event_date) {
		this.event_date = event_date;
	}
	public String getEvent_chief_guest_desc() {
		return event_chief_guest_desc;
	}
	public void setEvent_chief_guest_desc(String event_chief_guest_desc) {
		this.event_chief_guest_desc = event_chief_guest_desc;
	}
}
