package org.bigjava.collectProduct.entity;

import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * 收藏商品
 * @author Administrator
 *
 */
public class CollectProduct {
	
	private int CP_id;// 收藏商品表的id
	
	private User user;// 收藏商品表指向的User
	
	private Product product;// 收藏商品指向的Product

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
