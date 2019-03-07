package org.bigjava.merchant.dao.impl;

import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MerchantDaoImpl extends HibernateDaoSupport implements MerchantDao {

	// ÓÃ»§×¢²áµêÆÌ
	@Override
	public void registerMerchant(Merchant merchant) {
		// TODO Auto-generated method stub
		System.out.println("¿ªÊ¼×¢²áµêÆÌ");
		
		
	}

}
