package org.bigjava.entity.orders;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.bigjava.entity.orderitem.Orderitem;
import org.bigjava.entity.user.User;

/**
 * 订单表
 * @author Administrator
 *
 */
public class Orders {
	
	private int o_id;// 订单的id
	private double total;// 订单的总金额
	private Date ordertim;// 订单时间
	private int state;// 订单的状态(1为未支付，2为已支付、3是订单已发货、4为订单结束)
	private String o_name;// 订单人
	private String o_phone;// 订单人的电话号
	private String o_addr;// 订单人的收货地址
	
	private User user;// 多对一指向用户类
	
	private Set<Orderitem> setO = new HashSet<Orderitem>();// 一对多指向订单项表

	public Set<Orderitem> getSetO() {
		return setO;
	}

	public void setSetO(Set<Orderitem> setO) {
		this.setO = setO;
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

	public String getO_name() {
		return o_name;
	}

	public void setO_name(String o_name) {
		this.o_name = o_name;
	}

	public String getO_phone() {
		return o_phone;
	}

	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}

	public String getO_addr() {
		return o_addr;
	}

	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
}
