package com.tanmay.casestudy.model;

public class Book {
	private Integer bookid;
	private String bookName;
	private String authorName;
	private Integer noOfCopies;
	
	public Integer getBookid() {
		return bookid;
	}
	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public Integer getNoOfCopies() {
		return noOfCopies;
	}
	public void setNoOfCopies(Integer noOfCopies) {
		this.noOfCopies = noOfCopies;
	}
	public Book(Integer bookid, String bookName, String authorName, Integer noOfCopies) {
		super();
		this.bookid = bookid;
		this.bookName = bookName;
		this.authorName = authorName;
		this.noOfCopies = noOfCopies;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
