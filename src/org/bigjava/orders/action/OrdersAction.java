package org.bigjava.orders.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

public class OrdersAction {
	
	// ָ���û���
	private User loginUser;
	// ָ�򶩵���
	private Orders orders;
	// ��ӵĶ������id
	private String listId;
	// ��������Ʒ������
	private String listNumber;
	
	private OrdersBiz ordersBiz;
	private UserBiz userBiz;
	
	public String getListNumber() {
		return listNumber;
	}

	public void setListNumber(String listNumber) {
		this.listNumber = listNumber;
	}

	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	
	public String getListId() {
		return listId;
	}

	public void setListId(String listId) {
		this.listId = listId;
	}

	public void setOrdersBiz(OrdersBiz ordersBiz) {
		this.ordersBiz = ordersBiz;
	}
	
	// ��Ӷ���
	public String addOrders() {
		System.out.println("��ʼ��Ӷ���");
		System.out.println(listId);
		String[] sId = listId.split(",");
		String[] sNumber = listNumber.split(",");
		loginUser = userBiz.queryUsernameUser(loginUser.getUsername());
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String orderNumber = sdf.format(date) + System.currentTimeMillis();// �������
		orders.setOrderNumber(orderNumber);
		orders.setOrdertime(new Date());
		orders.setState(1);
		
		ordersBiz.addOrders(orders, loginUser, null);
		
		return "addOrders";
	}

}
