package org.bigjava.comment.biz;

import java.util.List;

import org.bigjava.comment.entity.Comment;

public interface CommentBiz {
	
	/**
	 * ͨ����������ȡǰ12����Ʒ
	 */
	public List<Comment> queryCommentByNumberOneToTwelve();

}
