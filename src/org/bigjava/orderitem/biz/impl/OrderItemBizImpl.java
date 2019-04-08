package org.bigjava.orderitem.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orderitem.dao.OrderItemDao;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.user.entity.User;

public class OrderItemBizImpl implements OrderItemBiz {

	private OrderItemDao orderItemDao;
	
	public void setOrderItemDao(OrderItemDao orderItemDao) {
		this.orderItemDao = orderItemDao;
	}

	// 添加订单项
	@Override
	public void addOrderItem(Orderitem orderitem) {
		// TODO Auto-generated method stub
		orderItemDao.addOrderItem(orderitem);
	}

	// 查询用户对应的订单项内容
	@Override
	public List<Orderitem> queryAllOrderItem(User user, Paging page) {
		// TODO Auto-generated method stub
		return orderItemDao.queryAllOrderItem(user, page);
	}

	// 查询用户对应的订单项数
	@Override
	public int queryOrderItemNumber(User user) {
		// TODO Auto-generated method stub
		return orderItemDao.queryOrderItemNumber(user);
	}

	// 删除订单项
	@Override
	public void deleteOrderItem(Orderitem orderItem) {
		// TODO Auto-generated method stub
		orderItemDao.deleteOrderItem(orderItem);
	}

}
