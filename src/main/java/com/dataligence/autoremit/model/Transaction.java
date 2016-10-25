package com.dataligence.autoremit.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="TRXN")
public class Transaction extends BaseModel {
	
	//private BankTeller bankTeller;
	
	
	@JoinColumn(name="ITEM_ID")
	@ManyToOne	
	private RevenueItem item;
	
	@JoinColumn(name="AGENCYSTAFF_ID")
	@ManyToOne
	private AgencyStaff agencyStaff;
	
	@JoinColumn(name="AGENCY_ID")
	@ManyToOne
	private Agency agency;
	
	@Column(name="TRXN_REF",unique=true, nullable=false)
	private String transactionRef;
	
	@Column(name="BANK_REF",unique=true, nullable=false)
	private String bankRef;
	
	@JoinColumn(name="PAYER_ID")
	@ManyToOne
	private Payer payer;
	
	@Column(name="AMOUNT", nullable=false)
	private float amount;
	
	@Column(name="AMT_IN_WORD", nullable=false)
	private String amtInWords;
	
	@Column(name="TRXN_DATE", nullable=false)
	private Date trxnDate;
	
	@Column(name="PAYMENTDETAILS", nullable=false)
	private String paymentDetails;

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

	public AgencyStaff getAgencyStaff() {
		return agencyStaff;
	}

	public void setAgencyStaff(AgencyStaff agencyStaff) {
		this.agencyStaff = agencyStaff;
	}

	public Agency getAgency() {
		return agency;
	}

	public void setAgency(Agency agency) {
		this.agency = agency;
	}

	public Date getTrxnDate() {
		return trxnDate;
	}

	public void setTrxnDate(Date trxnDate) {
		this.trxnDate = trxnDate;
	}

	public RevenueItem getItem() {
		return item;
	}

	public void setItem(RevenueItem item) {
		this.item = item;
	}

	public String getPaymentDetails() {
		return paymentDetails;
	}

	public void setPaymentDetails(String paymentDetails) {
		this.paymentDetails = paymentDetails;
	}

	public String getBankRef() {
		return bankRef;
	}

	public void setBankRef(String bankRef) {
		this.bankRef = bankRef;
	}
	
	

}
