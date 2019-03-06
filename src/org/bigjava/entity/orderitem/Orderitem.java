package org.bigjava.entity.orderitem;

import org.bigjava.entity.orders.Orders;
import org.bigjava.entity.product.Product;

/**
 * 订单项表
 * @author Administrator
 *
 */
public class Orderitem {
	
	private int item_id;// 订单项表id
	private int count;// 订单项表的订单商品的数量
	private double subtotal;// 订单项表商品的小计
	
	private Orders Orders;// 多对一指向订单表
	
	private Product product;// 一对一指向商品

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

	public Orders getOrders() {
		return Orders;
	}

	public void setOrders(Orders orders) {
		Orders = orders;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
