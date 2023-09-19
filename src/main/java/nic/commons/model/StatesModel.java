package nic.commons.model;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class StatesModel implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String statecode;
	private String statename;
	private Integer id;
	private String countryname;
	private String cityname;
	private String cand_name;
	
	
}
