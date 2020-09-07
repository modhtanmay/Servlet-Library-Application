package com.tanmay.casestudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tanmay.casestudy.dao.BookDao;
import com.tanmay.casestudy.model.Book;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao bookDao;
	

	public int addBook(Book b) {
		// TODO Auto-generated method stub
		return bookDao.addBook(b);
	}

	public int updateBook(Book b) {
		// TODO Auto-generated method stub
		return bookDao.updateBook(b);
	}

	public int deleteBook(int bookId) {
		// TODO Auto-generated method stub
		return bookDao.deleteBook(bookId);
	}

	public Book getBook(int bookId) {
		// TODO Auto-generated method stub
		return bookDao.getBook(bookId);
	}

	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		return bookDao.getBooks();
	}

}
