package org.bigjava.merchant.dao;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
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
	
	/**
	 * 店长名模糊搜索店铺
	 */
	public List<Merchant> likeQueryM_name(Paging paging, String searchText, int m_is_freeze);
	
	/**
	 * 店长名模糊搜索店铺数
	 */
	public int likeQueryM_nameNumber(String searchText,int m_is_freeze);
	
	/**
	 * 通过店铺id获取对应商品
	 */
	public List<Product> mIdQueryAllProduct(Paging paging, String searchText, int m_id);
	
	/**
	 * 通过店铺id获取对应商品的条数
	 */
	public int mIdQueryAllProductNumber(String searchText, int m_id);
	
	/**
	 * 店铺用户名模糊分页查询订单
	 */
	public List<Orders> merchantLikeUsernameLimitQueryOrders(int m_id, String searchUsername);
}
