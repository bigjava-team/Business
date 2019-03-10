package org.bigjava.merchant.dao;

import org.bigjava.merchant.entity.Merchant;
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
	 * 通过id查询用户信息
	 */
	public User queryUser(int u_id);
	
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
	 * 添加商品
	 */
	public void addProduct(Product product, Merchant merchant);

}
