package org.nic.rb.constants;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ApplicationStatus {
	
	@Value("${app.rb.action}")
	private String action;
	@Value("${app.rb.accepted}")
	private String accepted;
	@Value("${app.rb.regretted}")
	private String regretted;
	@Value("${app.rb.pending}")
	private String pending;
	@Value("${app.rb.closed}")
	private String closed;
	@Value("${app.rb.approved}")
	private String approved;
	
	public Integer getAction() {
		return Integer.valueOf(action);
	}
	public void setAction(String action) {
		this.action = action;
	}
	public Integer getApproved() {
		return Integer.valueOf(approved);
	}
	public void setApproved(String approved) {
		this.approved = approved;
	}
	public Integer getRegretted() {
		return Integer.valueOf(regretted);
	}
	public void setRegretted(String regretted) {
		this.regretted = regretted;
	}
	public Integer getPending() {
		return Integer.valueOf(pending);
	}
	public void setPending(String pending) {
		this.pending = pending;
	}
	public Integer getClosed() {
		return Integer.valueOf(closed);
	}
	public void setClosed(String closed) {
		this.closed = closed;
	}
	public Integer getAccepted() {
		return Integer.valueOf(accepted);
	}
	public void setAccepted(String accepted) {
		this.accepted = accepted;
	}
}
