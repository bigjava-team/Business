package org.bigjava.merchant.action;

import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.entity.Merchant;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MerchantAction extends ActionSupport implements ModelDriven<Merchant> {

	private Merchant merchant;
	private MerchantBiz merchantBiz;

	public void setMerchantBiz(MerchantBiz merchantBiz) {
		this.merchantBiz = merchantBiz;
	}

	@Override
	public Merchant getModel() {
		return merchant;
	}
	
	
	
	
	
	

}
