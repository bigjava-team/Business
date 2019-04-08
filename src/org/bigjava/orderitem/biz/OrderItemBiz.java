package org.bigjava.orderitem.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.user.entity.User;

public interface OrderItemBiz {

	/**
	 * 添加订单项 
	 */
	public void addOrderItem(Orderitem orderitem);
	
	/**
	 * 分页条件查询订单项
	 */
	public List<Orderitem> queryAllOrderItem(User user, Paging page);
	
	/**
	 * 条件查询订单项个数
	 */
	public int queryOrderItemNumber(User user);
}
