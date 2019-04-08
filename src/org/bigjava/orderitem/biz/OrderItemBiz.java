package org.bigjava.orderitem.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.user.entity.User;

public interface OrderItemBiz {

	/**
	 * ��Ӷ����� 
	 */
	public void addOrderItem(Orderitem orderitem);
	
	/**
	 * ��ҳ������ѯ������
	 */
	public List<Orderitem> queryAllOrderItem(User user, Paging page);
	
	/**
	 * ������ѯ���������
	 */
	public int queryOrderItemNumber(User user);
}
