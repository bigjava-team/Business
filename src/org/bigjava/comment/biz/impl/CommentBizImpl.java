package org.bigjava.comment.biz.impl;

import java.util.List;

import org.bigjava.comment.biz.CommentBiz;
import org.bigjava.comment.dao.CommentDao;
import org.bigjava.comment.entity.Comment;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public class CommentBizImpl implements CommentBiz {

	private CommentDao commentDao;
	
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	// ��ѯ����������12����Ʒ
	@Override
	public List<Comment> queryCommentByNumberOneToTwelve() {
		// TODO Auto-generated method stub
		return commentDao.queryCommentByNumberOneToTwelve();
	}

	// �������
	@Override
	public void addComment(Comment comment, User user, Product product) {
		// TODO Auto-generated method stub
		commentDao.addComment(comment, user, product);
	}

	// ͨ������id��ѯ��������
	@Override
	public Comment queryComment_id(int com_id) {
		// TODO Auto-generated method stub
		return commentDao.queryComment_id(com_id);
	}

	// ɾ������
	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDao.deleteComment(comment);
	}

	// ��ҳ������ѯ��������
	@Override
	public List<Comment> queryAllComment(User user, Paging page) {
		// TODO Auto-generated method stub
		return commentDao.queryAllComment(user, page);
	}

	// ������ѯ��������
	@Override
	public int queryAllCommentNumber(User user) {
		// TODO Auto-generated method stub
		return commentDao.queryAllCommentNumber(user);
	}

	// ��ѯ��Ʒ��Ӧ������
	@Override
	public List<Comment> queryProductCommentNumber(int p_id, int presentPage) {
		// TODO Auto-generated method stub
		return commentDao.queryProductCommentNumber(p_id, presentPage);
	}

}
