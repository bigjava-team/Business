package org.bigjava.orders.biz;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.orders.dao.OrdersDao;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.entity.User;

public interface OrdersBiz {
	
	/**
	 * ��Ӷ�����
	 */
	public void addOrders(Orders orders, User user, Addr addr);
	
	/**
	 * ɾ������(�˻�)
	 */
	public void deleteOrders(Orders orders);
	
	/**
	 * ͨ������id�򶩵���Ϣ
	 */
	public Orders queryOrders_id(int o_id);
	
	/**
	 * ��ҳ������ѯ����
	 */
	public List<Orders> queryAllOrders(Paging page, User user);
	
	/**
	 * ������ѯ����������
	 */
	public int queryAllOrdersNumber(User user);
	
	/**
	 * ͨ��������Ž��в�ѯ
	 */
	public Orders orderNumberQueryOrders(String orderNumber);
	
	/**
	 * �޸Ķ���״̬
	 */
	public void updateOrdersState(Orders orders);
	
}
