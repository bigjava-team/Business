package org.bigjava.comment.entity;

import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * ���۱�
 * @author Administrator
 *
 */
public class Comment {

	private int com_id;// ���۱��id
	private String comment;// ���۱����۵�����
	
	private User user;// ���һָ���û���
	
	private Product product;// ���һָ����Ʒ��
	
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
