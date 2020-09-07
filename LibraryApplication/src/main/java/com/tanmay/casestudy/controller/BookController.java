package com.tanmay.casestudy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tanmay.casestudy.model.Book;
import com.tanmay.casestudy.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;  
	
	@RequestMapping(value="/")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping("/addBook")
	public String addingBook(Model model) {
		model.addAttribute("book", new Book());
		return "add";
	}
	
	@PostMapping("/add")
	public String addTheBook(@ModelAttribute("book") Book book,Model model) {
		bookService.addBook(book);
		return "redirect:/details";
	}

	@RequestMapping("/details")
	public String bookDetails(Model model) {
		List<Book> bookList = bookService.getBooks();
		model.addAttribute("bookList", bookList);
		return "details";
	}
	
	@RequestMapping("/editBook/{bookid}")
	public String editBook(@PathVariable int bookid,Model model) {
		Book book = bookService.getBook(bookid);
		model.addAttribute("command", book);
		return "edit";
	}
	
	@PostMapping("/editSave")
	public String editBookSave(@ModelAttribute("book") Book book) {
		bookService.updateBook(book);
		return "redirect:/details";
	}
	
	@RequestMapping("/deleteBook/{bookid}")
	public String deleteBook(@PathVariable int bookid) {
		bookService.deleteBook(bookid);
		return "redirect:/details";
	}
}
