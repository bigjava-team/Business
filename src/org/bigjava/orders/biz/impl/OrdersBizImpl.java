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

	// ��Ӷ�����
	@Override
	public void addOrders(Orders orders, User user, Addr addr) {
		// TODO Auto-generated method stub
		ordersDao.addOrders(orders, user, addr);
	}

	// ɾ������(�˻�)
	@Override
	public void deleteOrders(Orders orders) {
		// TODO Auto-generated method stub

	}

	// ͨ������id�򶩵���Ϣ
	@Override
	public Orders queryOrders_id(int o_id) {
		// TODO Auto-generated method stub
		return null;
	}

	// ��ҳ������ѯ����
	@Override
	public List<Orders> queryAllOrders(Paging page, User user) {
		// TODO Auto-generated method stub
		return null;
	}

	// ������ѯ����������
	@Override
	public int queryAllOrdersNumber(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	// ͨ��������Ų�ѯ����
	@Override
	public Orders queryOrders_orderNumber(String orderNumber) {
		// TODO Auto-generated method stub
		return null;
	}

}
