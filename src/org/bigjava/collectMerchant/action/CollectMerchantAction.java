package org.bigjava.collectMerchant.action;

import java.util.List;

import org.bigjava.collectMerchant.biz.CollectMerchantBiz;
import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.biz.UserBiz;
import org.bigjava.user.entity.User;

import com.opensymphony.xwork2.ActionSupport;

public class CollectMerchantAction extends ActionSupport {
	
	private Paging paging;
	private User loginUser;
	private Merchant merchant;
	private CollectMerchant collectMerchant;

	private CollectMerchantBiz collectMerchantBiz;
	private UserBiz userBiz;
	
	private List<CollectMerchant> listCollectMerchant;
	
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public List<CollectMerchant> getListCollectMerchant() {
		return listCollectMerchant;
	}

	public void setListCollectMerchant(List<CollectMerchant> listCollectMerchant) {
		this.listCollectMerchant = listCollectMerchant;
	}

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
		System.out.println("开始收藏店铺"+loginUser + "," + merchant);
		boolean flag = collectMerchantBiz.queryUserMerchantCollectMerchant(loginUser.getU_id(), merchant.getM_id());
		if (flag) {
			System.out.println("该店铺已收藏");
			return SUCCESS;
		}
		loginUser = userBiz.query(loginUser.getU_id());
		collectMerchant = new CollectMerchant(loginUser, merchant);
		collectMerchantBiz.addCollectMerchant(collectMerchant);
		return SUCCESS;
	}
	
	// 分页查询用户收藏的店铺
	public String queryUserCollectMerchant() {
		System.out.println("开始查询用户收藏的店铺");
		int number = collectMerchantBiz.queryCollectMerchant_number(loginUser.getU_id());
		paging  = new Paging(paging.getPresentPage(), number, 5);
		listCollectMerchant = collectMerchantBiz.queryCollectMerchant_Uid(loginUser.getU_id(), paging);
		return "queryUserCollectMerchant";
	}
	
}
