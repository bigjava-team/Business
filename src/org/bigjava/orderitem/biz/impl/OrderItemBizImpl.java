package org.bigjava.orderitem.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.biz.OrderItemBiz;
import org.bigjava.orderitem.dao.OrderItemDao;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.entity.User;

public class OrderItemBizImpl implements OrderItemBiz {

	private OrderItemDao orderItemDao;
	
	public void setOrderItemDao(OrderItemDao orderItemDao) {
		this.orderItemDao = orderItemDao;
	}

	// ��Ӷ�����
	@Override
	public void addOrderItem(Orderitem orderitem) {
		// TODO Auto-generated method stub
		orderItemDao.addOrderItem(orderitem);
	}

	// ��ѯ�û���Ӧ�Ķ���������
	@Override
	public List<Orderitem> queryAllOrderItem(User user, Paging page) {
		// TODO Auto-generated method stub
		return orderItemDao.queryAllOrderItem(user, page);
	}

	// ��ѯ�û���Ӧ�Ķ�������
	@Override
	public int queryOrderItemNumber(User user) {
		// TODO Auto-generated method stub
		return orderItemDao.queryOrderItemNumber(user);
	}

	// ɾ��������
	@Override
	public void deleteOrderItem(Orderitem orderItem) {
		// TODO Auto-generated method stub
		orderItemDao.deleteOrderItem(orderItem);
	}

	// ͨ��������id��ѯ������
	@Override
	public Orderitem queryOrderItem_id(int item_id) {
		// TODO Auto-generated method stub
		return orderItemDao.queryOrderItem_id(item_id);
	}

	// ��Ӷ���������id
	@Override
	public void addOrders_id(List<Orderitem> listOrderItem, Orders orders) {
		// TODO Auto-generated method stub
		orderItemDao.addOrders_id(listOrderItem, orders);
	}

	// ͨ������������id��ѯ��Ӧ�Ķ�����
	@Override
	public List<Orderitem> queryAllOrderitem_o_id(int o_id) {
		// TODO Auto-generated method stub
		return orderItemDao.queryAllOrderitem_o_id(o_id);
	}

}
