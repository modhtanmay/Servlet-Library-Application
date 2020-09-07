package com.tanmay.casestudy.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.tanmay.casestudy.model.Book;
import com.tanmay.casestudy.model.BookMapper;

public class BookDaoImpl implements BookDao {

	JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	public int addBook(Book b) {
		// TODO Auto-generated method stub
		String sql = "insert into book(bookName,authorName,noOfCopies) values(?,?,?)";
		return jdbcTemplate.update(sql, new Object[] {b.getBookName(),b.getAuthorName(),b.getNoOfCopies()});
	
	}

	public int updateBook(Book b) {
		// TODO Auto-generated method stub
		String sql = "update book set bookName=?,authorName=?,noOfCopies=? where bookid=?";
		return jdbcTemplate.update(sql, new Object[] {b.getBookName(),b.getAuthorName(),b.getNoOfCopies(),b.getBookid()});
	}

	public int deleteBook(int bookId) {
		// TODO Auto-generated method stub
		String sql = "delete from book where bookid=?";
		return jdbcTemplate.update(sql, bookId);
	}

	public Book getBook(int bookId) {
		// TODO Auto-generated method stub
		String sql = "select * from book where bookid=?";
		return jdbcTemplate.queryForObject(sql,new Object[] {bookId}, new BookMapper());
	}

	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		String sql = "select * from book";
		List<Book> book = jdbcTemplate.query(sql, new BookMapper());
		return book;
	}

}
