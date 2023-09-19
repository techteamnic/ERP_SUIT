package nic.userdetails.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AppliedJobDetailsModel {
	private Integer id;
	private Integer advertisements;
	private String post_no;
	private String post_name;
	private String from_date;
	private String to_date;
	private String qualification;
	
	private String ad_name;
	private Integer job_id;
	private Integer userid;
}
