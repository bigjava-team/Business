package org.bigjava.comment.biz;

import java.util.List;

import org.bigjava.comment.entity.Comment;

public interface CommentBiz {
	
	/**
	 * 通过评论量获取前12的商品
	 */
	public List<Comment> queryCommentByNumberOneToTwelve();

}
