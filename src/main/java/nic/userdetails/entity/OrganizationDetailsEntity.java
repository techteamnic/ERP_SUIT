package nic.userdetails.entity;

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
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "organization_details")
public class OrganizationDetailsEntity implements Serializable{
private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "organization_details_id")
@SequenceGenerator(name = "organization_details_id", sequenceName = "organization_details_id_seq", allocationSize = 1)
@Column(name = "id", nullable = false, unique = true)
private Integer id;
private String org_name;
private String hosp_type;
private String hosp_speciality;
private String license_number;
private String licence_doc_id;
private String license_valid_from;
private String license_valid_to;
private String pan;
private String tan;
private String gst;
private String no_of_employees_working;
private String no_of_doctors;
private String test_facility;
private Integer category_id;

@Column
private String created_by;
@Temporal(TemporalType.DATE)
@DateTimeFormat(pattern = "dd-MM-yyyy")
@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
private Date created_date;
@Column
private String ipaddress;
@Temporal(TemporalType.TIMESTAMP)
@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
private Date ts;
private String modified_by;
@Temporal(TemporalType.DATE)
@DateTimeFormat(pattern = "dd-MM-yyyy")
@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
private Date modified_date;
private String userid;
private Integer role_id;
@Column(columnDefinition = "boolean default true ")
private boolean is_active;


}
