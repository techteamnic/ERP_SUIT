package org.nic.rb.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "messagedetails")
public class MessageDetailsEntity implements Serializable{
	
	private static final long serialVersionUID = -7800585528757551410L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "messagedetails_id")
	@SequenceGenerator(name = "messagedetails_id", sequenceName = "messagedetails_seq", allocationSize = 1)
	@Column(name = "msg_id", nullable = false, unique = true)
	private Integer msg_id;
	@Column(length=255)
	private String msg_sought_for;
	@Column(length=36)
	private String message_doc_id;
	@Column(length=36)
	private String org_evnt_celb_doc_id;
	
	public Integer getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(Integer msg_id) {
		this.msg_id = msg_id;
	}
	public String getMessage_doc_id() {
		return message_doc_id;
	}
	public void setMessage_doc_id(String message_doc_id) {
		this.message_doc_id = message_doc_id;
	}
	public String getMsg_sought_for() {
		return msg_sought_for;
	}
	public void setMsg_sought_for(String msg_sought_for) {
		this.msg_sought_for = msg_sought_for;
	}
	public String getOrg_evnt_celb_doc_id() {
		return org_evnt_celb_doc_id;
	}
	public void setOrg_evnt_celb_doc_id(String org_evnt_celb_doc_id) {
		this.org_evnt_celb_doc_id = org_evnt_celb_doc_id;
	}
	@Override
	public String toString() {
		return "MessageDetailsEntity [msg_id=" + msg_id + ", msg_sought_for=" + msg_sought_for + ", message_doc_id="
				+ message_doc_id + ", org_evnt_celb_doc_id=" + org_evnt_celb_doc_id + "]";
	}
}
