package com.dataligence.autoremit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="CORPORATE")
public class Corporate extends Payer{
	
	@Column(name="NAME", nullable=false)
	private String name;
	
	@Column(name="YR_OF_INC", nullable=false)
	private int yearOfIncorporation;
	
	@Column(name="REGNUM", nullable=false)
	private String regNum;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getYearOfIncorporation() {
		return yearOfIncorporation;
	}

	public void setYearOfIncorporation(int yearOfIncorporation) {
		this.yearOfIncorporation = yearOfIncorporation;
	}

	public String getRegNum() {
		return regNum;
	}

	public void setRegNum(String regNum) {
		this.regNum = regNum;
	}

}
