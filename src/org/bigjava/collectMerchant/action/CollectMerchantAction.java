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
	
	// �ղص��̵ķ���
	public String collectMerchant() {
		System.out.println("��ʼ�ղص���"+loginUser + "," + merchant);
		boolean flag = collectMerchantBiz.queryUserMerchantCollectMerchant(loginUser.getU_id(), merchant.getM_id());
		if (flag) {
			System.out.println("�õ������ղ�");
			return SUCCESS;
		}
		loginUser = userBiz.query(loginUser.getU_id());
		collectMerchant = new CollectMerchant(loginUser, merchant);
		collectMerchantBiz.addCollectMerchant(collectMerchant);
		return SUCCESS;
	}
	
	// ��ҳ��ѯ�û��ղصĵ���
	public String queryUserCollectMerchant() {
		System.out.println("��ʼ��ѯ�û��ղصĵ���");
		int number = collectMerchantBiz.queryCollectMerchant_number(loginUser.getU_id());
		paging  = new Paging(paging.getPresentPage(), number, 5);
		listCollectMerchant = collectMerchantBiz.queryCollectMerchant_Uid(loginUser.getU_id(), paging);
		return "queryUserCollectMerchant";
	}
	
}
