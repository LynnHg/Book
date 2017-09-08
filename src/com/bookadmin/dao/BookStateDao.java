package com.bookadmin.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface BookStateDao {
	public int getBookState(String scene);
}
