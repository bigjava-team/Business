package org.bigjava.collectProduct.entity;

import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * �ղ���Ʒ
 * @author Administrator
 *
 */
public class CollectProduct {
	
	private int CP_id;// �ղ���Ʒ���id
	
	private User user;// �ղ���Ʒ��ָ���User
	
	private Product product;// �ղ���Ʒָ���Product

	public int getCP_id() {
		return CP_id;
	}

	public void setCP_id(int cP_id) {
		CP_id = cP_id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "CollectProduct [CP_id=" + CP_id + "]";
	}
	
}
