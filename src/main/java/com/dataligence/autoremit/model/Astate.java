package com.dataligence.autoremit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ASTATE")
public class Astate extends BaseModel{
	
	@Column(name="NAME", unique=true, nullable=false)
	private String name;
	
	@Column(name="CODE", unique=true, nullable=false)
	private String code;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
