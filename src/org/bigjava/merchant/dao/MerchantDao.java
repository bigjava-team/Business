package org.bigjava.merchant.dao;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * 店铺操作
 * @author Administrator
 *
 */
public interface MerchantDao {
	
	/**
	 * 用户注册店铺
	 */
	public void registerMerchant(Merchant merchant, User user);
	
	/**
	 * 通过店铺id查询店铺
	 */
	public Merchant queryMerchant(int m_id);
	
	/**
	 * 删除店铺
	 */
	public void deleteMerchant(Merchant merchant);
	
	/**
	 * 修改店铺信息
	 * merchant为数据库中店铺数据
	 * updateMerchant为修改的店铺数据
	 * 
	 */
	public void updateMerchant(Merchant merchant, Merchant updateMerchant);
	
	/**
	 * 添加店铺公告
	 */
	public void addNotice(Merchant merchant);
	
	/**
	 * 删除公告
	 */
	public void updateNotice(Merchant merchant);
	
	/**
	 * 查询买家的订单详情
	 */
	public List<Orders> queryListOrders(int m_id);
	
	/**
	 * 修改买家的订单的状态
	 */
	public void updateOrdersState(Orders orders);
	
	/**
	 *  通过用户id查询店铺
	 */
	public Merchant queryUidMerchant(int u_id);
	
	/**
	 * 查询店铺最热前5商品
	 */
	public List<Product> queryProductMerchantTop();
	
	/**
	 * 查询最新商品
	 */
	public List<Product> queryProductMerchantTime();
}
