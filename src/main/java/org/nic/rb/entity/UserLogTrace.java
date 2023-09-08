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
@Table(name = "usr_log_trace")
public class UserLogTrace implements Serializable {
	
	private static final long serialVersionUID = 233970198350907617L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "usr_log")
	@SequenceGenerator(name = "usr_log", sequenceName = "usr_log_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Long id;
	@Column(length=80, nullable = false)
	private String username;
    @Column(length=20)
    private String ipaddress;
    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
    private Date logints;
    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
    private Date logoutts;
    @Column(length=20, nullable = false)
	private String log_type;
    @Column(length=100, nullable = false)
    private String log_message;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIpaddress() {
		return ipaddress;
	}
	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
	public Date getLogints() {
		return logints;
	}
	public void setLogints(Date logints) {
		this.logints = logints;
	}
	public Date getLogoutts() {
		return logoutts;
	}
	public void setLogoutts(Date logoutts) {
		this.logoutts = logoutts;
	}
	public String getLog_type() {
		return log_type;
	}
	public void setLog_type(String log_type) {
		this.log_type = log_type;
	}
	public String getLog_message() {
		return log_message;
	}
	public void setLog_message(String log_message) {
		this.log_message = log_message;
	}
}
