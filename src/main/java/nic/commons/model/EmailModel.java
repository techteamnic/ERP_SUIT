package nic.commons.model;
import java.io.Serializable;

public class EmailModel implements Serializable{
	
	private static final long serialVersionUID = -6993697236321468357L;
	
	private String toemail;
	private String subject;
	private String text;
	
	public String getToemail() {
		return toemail;
	}
	public void setToemail(String toemail) {
		this.toemail = toemail;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	@Override
	public String toString() {
		return "EmailModel [toemail=" + toemail + ", subject=" + subject + ", text=" + text + "]";
	}
}