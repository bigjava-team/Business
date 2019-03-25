package org.bigjava.addr.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.orders.entity.Orders;
import org.bigjava.user.entity.User;

/**
 * �ջ���ַ��
 * @author Administrator
 *
 */
public class Addr {
	
	private int a_id;// �ջ���ַid
	private String a_name;// �ռ���
	private String a_phone;// �ֻ�����
	private String address;// �ջ���ַ
	
	private User user;// ָ���û���
	
	private Set<Orders> setOrders = new HashSet<Orders>();// һ�Զ�ָ�򶩵���
	
	public Set<Orders> getSetOrders() {
		return setOrders;
	}

	public void setSetOrders(Set<Orders> setOrders) {
		this.setOrders = setOrders;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_phone() {
		return a_phone;
	}

	public void setA_phone(String a_phone) {
		this.a_phone = a_phone;
	}

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@Override
	public String toString() {
		return "Addr [a_id=" + a_id + ", a_name=" + a_name + ", a_phone=" + a_phone + ", address=" + address + "]";
	}

}
