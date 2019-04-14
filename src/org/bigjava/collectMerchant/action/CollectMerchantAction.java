package org.bigjava.collectMerchant.action;

import org.bigjava.collectMerchant.biz.CollectMerchantBiz;
import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;

public class CollectMerchantAction extends ActionSupport {
	
	private Paging paging;
	private User loginUser;
	private Merchant merchant;
	private CollectMerchant collectMerchant;

	private CollectMerchantBiz collectMerchantBiz;
	
	public CollectMerchant getCollectMerchant() {
		return collectMerchant;
	}

	public void setCollectMerchant(CollectMerchant collectMerchant) {
		this.collectMerchant = collectMerchant;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	public void setCollectMerchantBiz(CollectMerchantBiz collectMerchantBiz) {
		this.collectMerchantBiz = collectMerchantBiz;
	}
	
	// 收藏店铺的方法
	public String collectMerchant() {
		System.out.println("开始收藏店铺");
		collectMerchant = new CollectMerchant(loginUser, merchant);
		collectMerchantBiz.addCollectMerchant(collectMerchant);
		return "collectMerchant";
	}
	
}
