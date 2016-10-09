package com.dataligence.autoremit.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="INDIVIDUAL")
public class Individual extends Payer{
	
	@Column(name="FIRSTNAME", nullable=false)
	private String firstname;
	
	@Column(name="MIDDLENAME", nullable=false)
	private String middlename;
	
	@Column(name="LASTNAME", nullable=false)
	private String lastname;
	
	@Temporal(TemporalType.DATE)
	@Column(name="DATEOFBIRTH", nullable=false)
	private Date dateOfBirth;
	
	@Column(name="EMPSTATUS_ID")
	private Long employmentStatus_id;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Long getEmploymentStatus_id() {
		return employmentStatus_id;
	}

	public void setEmploymentStatus_id(Long employmentStatus_id) {
		this.employmentStatus_id = employmentStatus_id;
	}

}
