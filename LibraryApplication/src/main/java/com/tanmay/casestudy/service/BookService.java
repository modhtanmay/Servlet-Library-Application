package com.tanmay.casestudy.service;

import java.util.List;

import com.tanmay.casestudy.model.Book;

public interface BookService {

	public int addBook(Book b);

	public int updateBook(Book b);

	public int deleteBook(int bookId);

	public Book getBook(int bookId);

	public List<Book> getBooks();
}
