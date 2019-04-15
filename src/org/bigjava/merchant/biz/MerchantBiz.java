package org.bigjava.merchant.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * 店铺操作
 * 
 * @author Mr.Man
 *
 */
public interface MerchantBiz {

	/**
	 * 用户店铺注册
	 */
	public void registerMerchant(Merchant merchant, User user);

	/**
	 * 通过店铺ID查询店铺用户
	 */
	public Merchant queryMerchant(int m_id);

	/**
	 * 删除店铺
	 */
	public void deleteMerchant(Merchant merchant);

	/**
	 * 修改店铺
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
	 * 查询最新的商品
	 */
	public List<Product> queryProductMerchantTime();
	
	/**
	 * 查询最热的商品
	 */
	public List<Product> queryProductMerchantTop();
	
	/**
	 * 管理员查询所有店铺
	 */
	public List<Merchant> queryAllMerchant(Paging paging);
	
	/**
	 * 管理员查询所有店铺的数量
	 */
	public int queryAllMerchantNumber();
}
