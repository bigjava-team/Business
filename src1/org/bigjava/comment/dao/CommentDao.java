package org.bigjava.comment.dao;

import java.util.List;

import org.bigjava.comment.entity.Comment;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface CommentDao {
	
	/**
	 * 添加评论
	 */
	public void addComment(Comment comment, User user, Product product);
	
	/**
	 * 通过评论id获取评论内容
	 */
	public Comment queryComment_id(int com_id);
	
	/**
	 * 删除评论
	 */
	public void deleteComment(Comment comment);
	
	/**
	 * 条件查询评论内容
	 */
	public List<Comment> queryAllComment(User user, Paging page);
	
	/**
	 * 条件查询评论数量
	 */
	public int queryAllCommentNumber(User user);

}
