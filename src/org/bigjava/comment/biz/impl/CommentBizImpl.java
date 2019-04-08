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

	// 查询评论量最多的12件商品
	@Override
	public List<Comment> queryCommentByNumberOneToTwelve() {
		// TODO Auto-generated method stub
		return commentDao.queryCommentByNumberOneToTwelve();
	}

	// 添加评论
	@Override
	public void addComment(Comment comment, User user, Product product) {
		// TODO Auto-generated method stub
		commentDao.addComment(comment, user, product);
	}

	// 通过评论id查询评论内容
	@Override
	public Comment queryComment_id(int com_id) {
		// TODO Auto-generated method stub
		return commentDao.queryComment_id(com_id);
	}

	// 删除评论
	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDao.deleteComment(comment);
	}

	// 分页条件查询评论内容
	@Override
	public List<Comment> queryAllComment(User user, Paging page) {
		// TODO Auto-generated method stub
		return commentDao.queryAllComment(user, page);
	}

	// 条件查询评论数量
	@Override
	public int queryAllCommentNumber(User user) {
		// TODO Auto-generated method stub
		return commentDao.queryAllCommentNumber(user);
	}

	// 查询商品对应的评论
	@Override
	public List<Comment> queryProductCommentNumber(int p_id, int presentPage) {
		// TODO Auto-generated method stub
		return commentDao.queryProductCommentNumber(p_id, presentPage);
	}

}
