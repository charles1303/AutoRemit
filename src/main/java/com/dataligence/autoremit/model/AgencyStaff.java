package com.dataligence.autoremit.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="AGENCYSTAFF")
public class AgencyStaff extends User {
	
	@JoinColumn(name="AGENCY_ID",unique=true, nullable=false)
	@ManyToOne
	private Agency agency;
	
	public Agency getAgency() {
		return agency;
	}

	public void setAgency(Agency agency) {
		this.agency = agency;
	}

}
