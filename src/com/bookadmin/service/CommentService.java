package com.bookadmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bookadmin.dao.CommentDao;
import com.bookadmin.model.Comment;



@Service
public class CommentService {
	@Autowired
	private CommentDao cd;
	
	public int getCommentcount(){
		return cd.getCommentcount();
	}
	
	public List<Comment> getallComment(){
		return cd.getAllComment();
	}
	
	
	
}
