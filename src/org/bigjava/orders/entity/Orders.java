package org.bigjava.orders.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.bigjava.addr.entity.Addr;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.product.entity.Product;
import org.bigjava.productAge.entity.ProductAge;
import org.bigjava.user.entity.User;

/**
 * ������
 * @author Administrator
 *
 */
public class Orders {
	
	private int o_id;// ������id
	private String orderNumber;// �������
	private double total;// �������ܽ��
	private Date ordertime;// ����ʱ��
	private int state;// ������״̬(1Ϊδ֧����2Ϊ��֧����3�Ƕ����ѷ�����4Ϊ��������)
	
	private Addr addr;// ���һָ���ջ���ַ��
	
	private User user;// ���һָ���û���
	
	private Set<Orderitem> setOrderItem = new HashSet<Orderitem>();
	
	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Set<Orderitem> getSetOrderItem() {
		return setOrderItem;
	}

	public void setSetOrderItem(Set<Orderitem> setOrderItem) {
		this.setOrderItem = setOrderItem;
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

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
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
		return "Orders [o_id=" + o_id + ", orderNumber=" + orderNumber + ", total=" + total + ", ordertime=" + ordertime
				+ ", state=" + state + "]";
	}

}
