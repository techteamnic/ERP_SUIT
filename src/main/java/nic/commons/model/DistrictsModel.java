package nic.commons.model;

public class DistrictsModel {
	
	private String dist_code;
	private String dist_name;
	
	public String getDist_code() {
		return dist_code;
	}
	public void setDist_code(String dist_code) {
		this.dist_code = dist_code;
	}
	public String getDist_name() {
		return dist_name;
	}
	public void setDist_name(String dist_name) {
		this.dist_name = dist_name;
	}
	@Override
	public String toString() {
		return "DistrictsModel [dist_code=" + dist_code + ", dist_name="
				+ dist_name + "]";
	}
}
