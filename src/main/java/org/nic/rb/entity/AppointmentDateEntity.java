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

@Entity
@Table(name = "appointment_date")
public class AppointmentDateEntity implements Serializable{

	private static final long serialVersionUID = -432912986278043494L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "appointment_date_id")
	@SequenceGenerator(name = "appointment_date_id", sequenceName = "appointment_date_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Integer id;
	@Temporal(TemporalType.DATE)
	@Column(nullable = false, unique = true)
	private Date appoint_date;
	@Column(nullable = false, columnDefinition = "int default 0")
	private Integer day_seq;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(Date appoint_date) {
		this.appoint_date = appoint_date;
	}
	public Integer getDay_seq() {
		return day_seq;
	}
	public void setDay_seq(Integer day_seq) {
		this.day_seq = day_seq;
	}
}
