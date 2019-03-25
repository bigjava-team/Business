package org.bigjava.addr.entity;

import java.util.HashSet;
import java.util.Set;

import org.bigjava.orders.entity.Orders;
import org.bigjava.user.entity.User;

/**
 * 收货地址表
 * @author Administrator
 *
 */
public class Addr {
	
	private int a_id;// 收货地址id
	private String a_name;// 收件人
	private String a_phone;// 手机号码
	private String address;// 收货地址
	
	private User user;// 指向用户类
	
	private Set<Orders> setOrders = new HashSet<Orders>();// 一对多指向订单类
	
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
