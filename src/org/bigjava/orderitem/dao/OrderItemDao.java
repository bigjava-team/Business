package org.bigjava.orderitem.dao;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface OrderItemDao {
	
	/**
	 * 添加订单项 
	 */
	public void addOrderItem(Orderitem orderitem);
	
	/**
	 * 删除订单项
	 */
	public void deleteOrderItem(Orderitem orderItem);
	
	/**
	 * 通过订单项id查询订单项
	 */
	public Orderitem queryOrderItem_id(int item_id);
	
	/**
	 * 分页条件查询订单项
	 */
	public List<Orderitem> queryAllOrderItem(User user, Paging page);
	
	/**
	 * 条件查询订单项个数
	 */
	public int queryOrderItemNumber(User user);
	
	/**
	 * 修改订单项(除连接订单项的外键)
	 * orderItem为数据库中的订单项
	 * updateOrderItem为修改的订单项内容
	 * 
	 */
	public void updateOrderItem(Orderitem OrderItem, Orderitem updateOrderItem);
	
	/**
	 * 添加连接订单项的外键
	 * 
	 */
	public void addOrders_id(List<Orderitem> listOrderItem, Orders orders);
	
	/**
	 * 通过订单的主键id查询对应的订单项
	 */
	public List<Orderitem> queryAllOrderitem_o_id(int o_id);
	
}
