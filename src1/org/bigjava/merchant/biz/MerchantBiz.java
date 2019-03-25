package org.bigjava.merchant.biz;

import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * µêÆÌ²Ù×÷
 * 
 * @author Mr.Man
 *
 */
public interface MerchantBiz {

	/**
	 * ÓÃ»§µêÆÌ×¢²á
	 */
	public void registerMerchant(Merchant merchant, User user);

	/**
	 * Í¨¹ıµêÆÌID²éÑ¯µêÆÌÓÃ»§
	 */
	public Merchant queryMerchant(int m_id);

	/**
	 * É¾³ıµêÆÌ
	 */
	public void deleteMerchant(Merchant merchant);

	/**
	 * ĞŞ¸ÄµêÆÌ
	 */
	public void updateMerchant(Merchant merchant, Merchant updateMerchant);

}
