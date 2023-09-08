package org.nic.rb.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "addl_visitors")
public class AdditionalVisitorsEntity implements Serializable{
	
	private static final long serialVersionUID = 7878175928175281118L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "addl_visitors_id")
	@SequenceGenerator(name = "addl_visitors_id", sequenceName = "addl_visitors_seq", allocationSize = 1)
	@Column(name="visitor_id", nullable = false, unique = true)
	private Integer visitor_id;
	@Column(length=80)
	private String addl_visitor_name;
	@Column(length=20)
	private String addl_visitor_identity_type;
	@Column(length=20)
	private String addl_visitor_id_number;
	@Column(length=10)
	private String addl_visitor_mobile;
	@Column(length=36)
	private String addl_visitor_doc_id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="visit_id", nullable=false)
	@JsonBackReference
	private AppointmentEntity appoint_id;
	
	public Integer getVisitor_id() {
		return visitor_id;
	}
	public void setVisitor_id(Integer visitor_id) {
		this.visitor_id = visitor_id;
	}
	public String getAddl_visitor_name() {
		return addl_visitor_name;
	}
	public void setAddl_visitor_name(String addl_visitor_name) {
		this.addl_visitor_name = addl_visitor_name;
	}
	public String getAddl_visitor_id_number() {
		return addl_visitor_id_number;
	}
	public void setAddl_visitor_id_number(String addl_visitor_id_number) {
		this.addl_visitor_id_number = addl_visitor_id_number;
	}
	public String getAddl_visitor_mobile() {
		return addl_visitor_mobile;
	}
	public void setAddl_visitor_mobile(String addl_visitor_mobile) {
		this.addl_visitor_mobile = addl_visitor_mobile;
	}
	public String getAddl_visitor_doc_id() {
		return addl_visitor_doc_id;
	}
	public void setAddl_visitor_doc_id(String addl_visitor_doc_id) {
		this.addl_visitor_doc_id = addl_visitor_doc_id;
	}
	public AppointmentEntity getAppoint_id() {
		return appoint_id;
	}
	public void setAppoint_id(AppointmentEntity appoint_id) {
		this.appoint_id = appoint_id;
	}
	public String getAddl_visitor_identity_type() {
		return addl_visitor_identity_type;
	}
	public void setAddl_visitor_identity_type(String addl_visitor_identity_type) {
		this.addl_visitor_identity_type = addl_visitor_identity_type;
	}
}
