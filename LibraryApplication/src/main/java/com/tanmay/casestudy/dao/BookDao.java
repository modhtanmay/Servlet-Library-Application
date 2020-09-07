package com.tanmay.casestudy.dao;

import java.util.List;

import com.tanmay.casestudy.model.Book;

public interface BookDao {

	public int addBook(Book b);
	
	public int updateBook(Book b);
	
	public int deleteBook(int bookId);
	
	public Book getBook(int bookId);
	
	public List<Book> getBooks();
}
