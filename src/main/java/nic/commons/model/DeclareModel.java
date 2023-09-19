package nic.commons.model;

import java.io.Serializable;

public class DeclareModel implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8377869877907510599L;
	private int positions;
	private boolean declaration;
	private String unique_id;
	
	private Integer dec_resp;
	
	public int getPositions() {
		return positions;
	}
	public void setPositions(int positions) {
		this.positions = positions;
	}
	public boolean isDeclaration() {
		return declaration;
	}
	public void setDeclaration(boolean declaration) {
		this.declaration = declaration;
	}
	public Integer getDec_resp() {
		return dec_resp;
	}
	public void setDec_resp(Integer dec_resp) {
		this.dec_resp = dec_resp;
	}
	public String getUnique_id() {
		return unique_id;
	}
	public void setUnique_id(String unique_id) {
		this.unique_id = unique_id;
	}
}
