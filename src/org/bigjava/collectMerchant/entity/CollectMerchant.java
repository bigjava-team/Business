package org.bigjava.collectMerchant.entity;

import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * �ղص���
 * @author Administrator
 *
 */
public class CollectMerchant {
	
	private int CM_id;// �ղص��̱��id
	
	private User user;// ���һ ָ���û���
	
	private Merchant merchant;// ���һָ�������

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
