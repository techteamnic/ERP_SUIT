package nic.userdetails.entity;

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

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
@Table(name = "approved_users")
public class ApprovedUsersEntity {

private static final long serialVersionUID = -2458931683662826118L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "approved_users")
	@SequenceGenerator(name = "approved_users", sequenceName = "approved_users_id_seq", allocationSize = 1)
	@Column(unique = true, nullable = false)
	private Integer id;
	@Column
	private Integer user_id;
	@Column
	private Integer orgcode;
	@Column
	private Integer category;
	@Column
	private String created_by;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date created_date;
	@Column
	private String modified_by;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date modified_date;
	@Column
	private String ipaddress;
	@Temporal(TemporalType.TIMESTAMP)
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
	private Date ts;
	@Column
	private Integer role_id;
	@Column
	private Boolean is_active;
	
	
}
