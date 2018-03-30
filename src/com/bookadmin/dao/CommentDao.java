package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.User;
import com.bookadmin.model.Comment;

@Repository
public interface CommentDao {
	
	public void addComment(String commentTime,String commentText,int commentState,String bookid,String openid,String nickName,String avatarUrl);
	
	public void deleteCommentByCommentid(int id);
	public void deleteCommentByCommentid(String id);
	
	public void updateComment(int commentid,String commentTime,String commentText,int commentState,String bookid);
	
	public Comment selectCommentByCommentid(int id);
	public List< Comment > selectByTime(String datemin,String datemax);
	public List< Comment > selectComment(int id,String text);
	public List< Comment > searchAndTime(String datemin,String datemax,int id,String text);
	public List< Comment > selectByTimeAndText(String datemin,String datemax,String text);
	
	public int getCommentcount();
	public List<Comment> getComment(int id);
	public List<Comment> getAllComment();
	
	public List<Comment> getCommentByBookid(int bookid);
	
	

}
