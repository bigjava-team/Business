package org.bigjava.merchant.biz;

import org.bigjava.merchant.entity.Merchant;
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
	public void addNotice(String notice);

}
