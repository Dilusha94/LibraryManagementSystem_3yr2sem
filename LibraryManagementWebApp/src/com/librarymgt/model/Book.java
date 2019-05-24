package com.librarymgt.model;

public class Book {
	
	private String bookName;
	private String category;
	private String author;
	private String isbn;
	private int copies;
	private String type;
	private double rentFee;
	
	
	public Book() {
		super();
	}

	public Book(String bookName, String category, String author, String isbn, int copies, String type, double rentFee) {
		super();
		this.bookName = bookName;
		this.category = category;
		this.author = author;
		this.isbn = isbn;
		this.copies = copies;
		this.type = type;
		this.rentFee = rentFee;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getCopies() {
		return copies;
	}
	public void setCopies(int copies) {
		this.copies = copies;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getRentFee() {
		return rentFee;
	}
	public void setRentFee(double rentFee) {
		this.rentFee = rentFee;
	}
	@Override
	public String toString() {
		return "Book [bookName=" + bookName + ", category=" + category + ", author=" + author + ", isbn=" + isbn
				+ ", copies=" + copies + ", type=" + type + ", rentFee=" + rentFee + "]";
	}
	
	
}
