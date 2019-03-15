package org.bigjava.orderitem.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface OrderItemDao {
	
	/**
	 * ��Ӷ����� 
	 */
	public void addOrderItem(Orderitem orderItem, User user, Product product);
	
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
	 * �޸Ķ�����
	 * orderItemΪ���ݿ��еĶ�����
	 * updateOrderItemΪ�޸ĵĶ���������
	 * 
	 */
	public void updateOrderItem(Orderitem orderItem, Orderitem updateOrderItem);
}
