package org.bigjava.orders.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.bigjava.addr.entity.Addr;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * ������
 * @author Administrator
 *
 */
public class Orders {
	
	private int o_id;// ������id
	private double total;// �������ܽ��
	private Date ordertim;// ����ʱ��
	private int state;// ������״̬(1Ϊδ֧����2Ϊ��֧����3�Ƕ����ѷ�����4Ϊ��������)
	
	private Addr addr;// һ��һָ���ջ���ַ��
	
	private User user;// ���һָ���û���
	
	private Product product;// ָ����Ʒ��
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Date getOrdertim() {
		return ordertim;
	}

	public void setOrdertim(Date ordertim) {
		this.ordertim = ordertim;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Addr getAddr() {
		return addr;
	}

	public void setAddr(Addr addr) {
		this.addr = addr;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Orders [o_id=" + o_id + ", total=" + total + ", ordertim=" + ordertim + ", state=" + state + "]";
	}
}
