package com.bookadmin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Act;

@Repository
public interface ActDao {

	public List<Act> getAllAct();
}
