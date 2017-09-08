package com.bookadmin.vo;

import com.bookadmin.model.Book;
import com.bookadmin.model.Store;

public class StoreRanking extends Store{
	private Book book;
	private int books;//销量

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getBooks() {
		return books;
	}

	public void setBooks(int books) {
		this.books = books;
	}
}
