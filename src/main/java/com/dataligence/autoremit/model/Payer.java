package com.dataligence.autoremit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="PAYER")
public class Payer extends User{
	
	@Column(name="ADDRESS", nullable=false)
	private String address;
	
	//@Column(name="LGA_ID", nullable=false)
	@Column(name="LGA_ID")
	private Long lga_id;
	
	//@Column(name="STATE_ID", nullable=false)
	@Column(name="STATE_ID")
	private Long state_id;
	
	@Column(name="PHONE", nullable=false)
	private String phone;
	
	@Column(unique=true, nullable=false)
	private String pin;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Long getLga_id() {
		return lga_id;
	}

	public void setLga_id(Long lga_id) {
		this.lga_id = lga_id;
	}

	public Long getState_id() {
		return state_id;
	}

	public void setState_id(Long state_id) {
		this.state_id = state_id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

}
