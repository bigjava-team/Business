package org.bigjava.orderitem.entity;

import org.bigjava.addr.entity.Addr;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * 订单项表
 * @author Administrator
 *
 */
public class Orderitem {
	
	private int item_id;// 订单项表id
	private int count;// 订单项表的订单商品的数量
	private double subtotal;// 订单项表商品的小计
	
	private User user;// 指向用户类
	
	private Product product;// 指向商品类
	
	private Addr addr;// 指向收货地址类
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getItem_id() {
		return item_id;
	}

	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	
	public Addr getAddr() {
		return addr;
	}

	public void setAddr(Addr addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "Orderitem [item_id=" + item_id + ", count=" + count + ", subtotal=" + subtotal + "]";
	}

}
