package org.bigjava.orderitem.entity;

import org.bigjava.addr.entity.Addr;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * �������
 * @author Administrator
 *
 */
public class Orderitem {
	
	private int item_id;// �������id
	private int count;// �������Ķ�����Ʒ������
	private double subtotal;// ���������Ʒ��С��
	
	private User user;// ָ���û���
	
	private Product product;// ָ����Ʒ��
	
	private Addr addr;// ָ���ջ���ַ��
	
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
