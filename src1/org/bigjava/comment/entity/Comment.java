package org.bigjava.comment.entity;

import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * 评价表
 * @author Administrator
 *
 */
public class Comment {

	private int com_id;// 评价表的id
	private String comment;// 评价表评价的内容
	
	private User user;// 多对一指向用户表
	
	private Product product;// 多对一指向商品表
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCom_id() {
		return com_id;
	}

	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
