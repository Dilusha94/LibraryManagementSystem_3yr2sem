package com.librarymgt.model;

import java.util.Date;

public class IssuedBook {
	private int issue_id;
	private int book_id;
	private int mem_id;
	private double rent_fee;
	private Date issue_date;
	private Date due_date;
	private String lend_or_rent;
	
	
	public IssuedBook() {
		
	}


	public IssuedBook(int issue_id, int book_id, int mem_id, double rent_fee, Date issue_date, Date due_date,
			String lend_or_rent) {
		super();
		this.issue_id = issue_id;
		this.book_id = book_id;
		this.mem_id = mem_id;
		this.rent_fee = rent_fee;
		this.issue_date = issue_date;
		this.due_date = due_date;
		this.lend_or_rent = lend_or_rent;
	}


	public int getIssue_id() {
		return issue_id;
	}


	public void setIssue_id(int issue_id) {
		this.issue_id = issue_id;
	}


	public int getBook_id() {
		return book_id;
	}


	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}


	public int getMem_id() {
		return mem_id;
	}


	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}


	public double getRent_fee() {
		return rent_fee;
	}


	public void setRent_fee(double rent_fee) {
		this.rent_fee = rent_fee;
	}


	public Date getIssue_date() {
		return issue_date;
	}


	public void setIssue_date(Date issue_date) {
		this.issue_date = issue_date;
	}


	public Date getDue_date() {
		return due_date;
	}


	public void setDue_date(Date due_date) {
		this.due_date = due_date;
	}


	public String getLend_or_rent() {
		return lend_or_rent;
	}


	public void setLend_or_rent(String lend_or_rent) {
		this.lend_or_rent = lend_or_rent;
	}


	@Override
	public String toString() {
		return "IssuedBook [issue_id=" + issue_id + ", book_id=" + book_id + ", mem_id=" + mem_id + ", rent_fee="
				+ rent_fee + ", issue_date=" + issue_date + ", due_date=" + due_date + ", lend_or_rent=" + lend_or_rent
				+ ", getIssue_id()=" + getIssue_id() + ", getBook_id()=" + getBook_id() + ", getMem_id()=" + getMem_id()
				+ ", getRent_fee()=" + getRent_fee() + ", getIssue_date()=" + getIssue_date() + ", getDue_date()="
				+ getDue_date() + ", getLend_or_rent()=" + getLend_or_rent() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}


}
