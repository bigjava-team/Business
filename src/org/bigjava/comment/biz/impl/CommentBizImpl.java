package org.bigjava.comment.biz.impl;

import java.util.List;

import org.bigjava.comment.biz.CommentBiz;
import org.bigjava.comment.dao.CommentDao;
import org.bigjava.comment.entity.Comment;

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

}
