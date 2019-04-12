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
	private User loginUser;

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

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
	 * 注册店铺
	 */
	public String registerMerchant() {
		// 获取用户的ID
		int u_id = user.getU_id();
		// 店铺注册的时间
		Date m_time = new Date();
		// 店铺的状态
		int m_is_freeze = 1;

		merchant.setM_time(m_time);
		merchant.setM_is_freeze(m_is_freeze);

		user = userBiz.query(u_id);

		merchantBiz.registerMerchant(merchant, user);
		return "registerMerchantSuccess";
	}

	/**
	 * 通过店铺ID查询店铺
	 */
	public String getMerchantById() {
		merchantBiz.queryMerchant(merchant.getM_id());
		return "getMerchantByIdSuccess";
	}

	/**
	 * 删除店铺
	 */
	public String deleteMerchant() {
		merchantBiz.deleteMerchant(merchant);
		return "deleteMerchantSuccess";
	}

	/**
	 * 修改店铺
	 */
	public String updateMerchant() {
//		Merchant updateMerchant ;
//		merchantBiz.updateMerchant(merchant, updateMerchant);
		return "updateMerchantSuccess";
	}

	/**
	 * 跳转到我的店铺
	 */
	public String gotoMerchant() {
		System.out.println("MerchantAction。。跳转到我的店铺>gotoMerchant()..");
		return "gotoMerchant";
	}
	
	/**
	 * 添加店铺公告
	 */
	public String addNotice() {
		System.out.println("MerchantAction.....addNotice().");
//		merchantBiz.addNotice(notice);
		return "addNotice";
	}
	
	/**
	 * 删除店铺公告
	 */

	
	/**
	 * 修改店铺公告
	 */
	
	/**
	 * 查询店铺公告
	 */
}

