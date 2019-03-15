package org.bigjava.orders.dao;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface OrdersDao {
	
	/**
	 * ��Ӷ�����
	 */
	public void addOrders(Orders orders, User user, Addr addr, List<Product> product);
	
	/**
	 * ɾ��������(�˻�)
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

}
