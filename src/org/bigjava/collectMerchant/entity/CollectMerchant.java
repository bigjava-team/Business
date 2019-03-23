package org.bigjava.collectMerchant.entity;

import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * 收藏店铺
 * @author Administrator
 *
 */
public class CollectMerchant {
	
	private int CM_id;// 收藏店铺表的id
	
	private User user;// 多对一 指向用户类
	
	private Merchant merchant;// 多对一指向店铺类

	public int getCM_id() {
		return CM_id;
	}

	public void setCM_id(int cM_id) {
		CM_id = cM_id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	@Override
	public String toString() {
		return "CollectMerchant [CM_id=" + CM_id + ", merchant=" + merchant + "]";
	}
	
}
