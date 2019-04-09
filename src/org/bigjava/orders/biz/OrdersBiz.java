package org.bigjava.orders.biz;

import java.util.List;

import org.bigjava.addr.entity.Addr;
import org.bigjava.function.Paging;
import org.bigjava.orders.dao.OrdersDao;
import org.bigjava.orders.entity.Orders;
import org.bigjava.user.entity.User;

public interface OrdersBiz {
	
	/**
	 * 添加订单类
	 */
	public void addOrders(Orders orders, User user, Addr addr);
	
	/**
	 * 删除订单(退货)
	 */
	public void deleteOrders(Orders orders);
	
	/**
	 * 通过订单id或订单信息
	 */
	public Orders queryOrders_id(int o_id);
	
	/**
	 * 分页条件查询订单
	 */
	public List<Orders> queryAllOrders(Paging page, User user);
	
	/**
	 * 条件查询订单的数量
	 */
	public int queryAllOrdersNumber(User user);
	
	/**
	 * 通过订单编号查询订单
	 */
	public Orders queryOrders_orderNumber(String orderNumber);
}
