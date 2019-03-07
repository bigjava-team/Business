package org.bigjava.addr.entity;

import org.bigjava.user.entity.User;

/**
 * 收货地址表
 * @author Administrator
 *
 */
public class Addr {
	
	private int a_id;// 收货地址id
	private String address;// 收货地址
	
	private User user;// 指向用户类

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

}
