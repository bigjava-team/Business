package org.bigjava.merchant.action;

import java.util.Date;

import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.entity.Product;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MerchantAction extends ActionSupport implements ModelDriven<Merchant> {

	private Merchant merchant = new Merchant();
	private MerchantBiz merchantBiz;
	private UserBiz userBiz;
	private User user;

	public void setMerchantBiz(MerchantBiz merchantBiz) {
		this.merchantBiz = merchantBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public Merchant getModel() {
		return merchant;
	}

	/**
	 * ×¢²áµêÆÌ
	 */
	public String registerMerchant() {
		// »ñÈ¡ÓÃ»§µÄID
		int u_id = user.getU_id();
		// µêÆÌ×¢²áµÄÊ±¼ä
		Date m_time = new Date();
		// µêÆÌµÄ×´Ì¬
		int m_is_freeze = 1;

		merchant.setM_time(m_time);
		merchant.setM_is_freeze(m_is_freeze);

		user = userBiz.query(u_id);

		merchantBiz.registerMerchant(merchant, user);
		return "registerMerchantSuccess";
	}

	/**
	 * Í¨¹ýµêÆÌID²éÑ¯µêÆÌ
	 */
	public String getMerchantById() {
		merchantBiz.queryMerchant(merchant.getM_id());
		return "getMerchantByIdSuccess";
	}

	/**
	 * É¾³ýµêÆÌ
	 */
	public String deleteMerchant() {
		merchantBiz.deleteMerchant(merchant);
		return "deleteMerchantSuccess";
	}

	/**
	 * ÐÞ¸ÄµêÆÌ
	 */
	public String updateMerchant() {
//		Merchant updateMerchant ;
//		merchantBiz.updateMerchant(merchant, updateMerchant);
		return "updateMerchantSuccess";
	}

}
