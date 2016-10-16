package com.dataligence.autoremit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="TRXN")
public class Transaction extends BaseModel {
	
	//private BankTeller bankTeller;
	
		//private Agency agency;
		
		//private RevenueItem item;
		
		//private AgencyStaff staff;
	
	@Column(name="TRXN_REF",unique=true, nullable=false)
	private String transactionRef;
	
	@ManyToOne
	private Payer payer;
	
	@Column(name="AMOUNT", nullable=false)
	private float amount;
	
	@Column(name="AMT_IN_WORD", nullable=false)
	private String amtInWords;

	public String getTransactionRef() {
		return transactionRef;
	}

	public void setTransactionRef(String transactionRef) {
		this.transactionRef = transactionRef;
	}

	public Payer getPayer() {
		return payer;
	}

	public void setPayer(Payer payer) {
		this.payer = payer;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public String getAmtInWords() {
		return amtInWords;
	}

	public void setAmtInWords(String amtInWords) {
		this.amtInWords = amtInWords;
	}
	
	

}
