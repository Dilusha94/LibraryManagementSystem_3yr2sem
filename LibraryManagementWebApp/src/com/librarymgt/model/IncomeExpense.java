package com.librarymgt.model;

public class IncomeExpense {
	
	private String date;
	private String description;
	private String type;
	private double amount;
	
	
	public IncomeExpense() {
		super();
	}

	public IncomeExpense(String date, String description, String type, double amount) {
		super();
		this.date = date;
		this.description = description;
		this.type = type;
		this.amount = amount;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "IncomeExpense [date=" + date + ", description=" + description + ", type=" + type + ", amount=" + amount
				+ "]";
	}
	
	
}
