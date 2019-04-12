package org.bigjava.orderitem.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface OrderItemDao {
	
	/**
	 * ��Ӷ����� 
	 */
	public void addOrderItem(Orderitem orderitem);
	
	/**
	 * ɾ��������
	 */
	public void deleteOrderItem(Orderitem orderItem);
	
	/**
	 * ͨ��������id��ѯ������
	 */
	public Orderitem queryOrderItem_id(int item_id);
	
	/**
	 * ��ҳ������ѯ������
	 */
	public List<Orderitem> queryAllOrderItem(User user, Paging page);
	
	/**
	 * ������ѯ���������
	 */
	public int queryOrderItemNumber(User user);
	
	/**
	 * �޸Ķ�����(�����Ӷ���������)
	 * orderItemΪ���ݿ��еĶ�����
	 * updateOrderItemΪ�޸ĵĶ���������
	 * 
	 */
	public void updateOrderItem(Orderitem OrderItem, Orderitem updateOrderItem);
	
	/**
	 * ������Ӷ���������
	 * 
	 */
	public void addOrders_id(List<Orderitem> listOrderItem, Orders orders);
	
	/**
	 * ͨ������������id��ѯ��Ӧ�Ķ�����
	 */
	public List<Orderitem> queryAllOrderitem_o_id(int o_id);
	
}
