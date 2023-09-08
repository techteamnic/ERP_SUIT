package org.nic.rb.model;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;

public class ApplicationStatusModel implements Serializable{
	
	private static final long serialVersionUID = -2537234675419221827L;
	
	private BigInteger appl_action;
	private BigInteger appl_accepted;
	private BigInteger appl_regretted;
	private BigInteger appl_pending;
	private BigInteger appl_closed;
	private BigInteger appl_approved;
	
	private Date appoint_date;
	
	public BigInteger getAppl_accepted() {
		return appl_accepted;
	}
	public void setAppl_accepted(BigInteger appl_accepted) {
		this.appl_accepted = appl_accepted;
	}
	public BigInteger getAppl_action() {
		return appl_action;
	}
	public void setAppl_action(BigInteger appl_action) {
		this.appl_action = appl_action;
	}
	public BigInteger getAppl_approved() {
		return appl_approved;
	}
	public void setAppl_approved(BigInteger appl_approved) {
		this.appl_approved = appl_approved;
	}
	public BigInteger getAppl_regretted() {
		return appl_regretted;
	}
	public void setAppl_regretted(BigInteger appl_regretted) {
		this.appl_regretted = appl_regretted;
	}
	public BigInteger getAppl_pending() {
		return appl_pending;
	}
	public void setAppl_pending(BigInteger appl_pending) {
		this.appl_pending = appl_pending;
	}
	public BigInteger getAppl_closed() {
		return appl_closed;
	}
	public void setAppl_closed(BigInteger appl_closed) {
		this.appl_closed = appl_closed;
	}
	public Date getAppoint_date() {
		return appoint_date;
	}
	public void setAppoint_date(Date appoint_date) {
		this.appoint_date = appoint_date;
	}
}
