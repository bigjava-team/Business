package org.bigjava.orders.biz.impl;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.orders.biz.OrdersBiz;
import org.bigjava.orders.dao.OrdersDao;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.entity.User;

public class OrdersBizImpl implements OrdersBiz {

	private OrdersDao ordersDao;
	
	public OrdersDao getOrdersDao() {
		return ordersDao;
	}

	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	// 添加订单类
	@Override
	public void addOrders(Orders orders, User user, Addr addr) {
		// TODO Auto-generated method stub
		ordersDao.addOrders(orders, user, addr);
	}

	// 删除订单(退货)
	@Override
	public void deleteOrders(Orders orders) {
		// TODO Auto-generated method stub
		ordersDao.deleteOrders(orders);
	}

	// 通过订单id或订单信息
	@Override
	public Orders queryOrders_id(int o_id) {
		// TODO Auto-generated method stub
		return ordersDao.queryOrders_id(o_id);
	}

	// 分页条件查询订单
	@Override
	public List<Orders> queryAllOrders(Paging page, User user) {
		// TODO Auto-generated method stub
		return ordersDao.queryAllOrders(page, user);
	}

	// 条件查询订单的数量
	@Override
	public int queryAllOrdersNumber(User user) {
		// TODO Auto-generated method stub
		return ordersDao.queryAllOrdersNumber(user);
	}

	// 通过订单编号进行查询
	@Override
	public Orders orderNumberQueryOrders(String orderNumber) {
		// TODO Auto-generated method stub
		return ordersDao.orderNumberQueryOrders(orderNumber);
	}

	// 修改订单的状态
	@Override
	public void updateOrdersState(Orders orders) {
		// TODO Auto-generated method stub
		ordersDao.updateOrdersState(orders);
	}

}
