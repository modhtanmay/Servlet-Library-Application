package com.tanmay.casestudy.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BookMapper implements RowMapper<Book> {

	public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Book book = new Book();
		book.setBookid(rs.getInt(1));
		book.setBookName(rs.getString(2));
		book.setAuthorName(rs.getString(3));
		book.setNoOfCopies(rs.getInt(4));
		
		return book;
	}

}
