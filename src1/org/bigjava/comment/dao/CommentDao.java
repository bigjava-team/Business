package org.bigjava.comment.dao;

import java.util.List;

import org.bigjava.comment.entity.Comment;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface CommentDao {
	
	/**
	 * �������
	 */
	public void addComment(Comment comment, User user, Product product);
	
	/**
	 * ͨ������id��ȡ��������
	 */
	public Comment queryComment_id(int com_id);
	
	/**
	 * ɾ������
	 */
	public void deleteComment(Comment comment);
	
	/**
	 * ������ѯ��������
	 */
	public List<Comment> queryAllComment(User user, Paging page);
	
	/**
	 * ������ѯ��������
	 */
	public int queryAllCommentNumber(User user);

}
