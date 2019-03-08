package org.bigjava.merchant.biz.impl;

import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

public class MerchantBizImpl implements MerchantBiz {
	
	//注入MerchantDao
	private MerchantDao merchantDao;
	
	public void setMerchantDao(MerchantDao merchantDao) {
		this.merchantDao = merchantDao;
	}

	//注册店铺
	@Override
	public void registerMerchant(Merchant merchant ,  User user) {
		merchantDao.registerMerchant(merchant, user);
	}

	//通过ID查询用户信息
	@Override
	public User queryUser(int u_id) {
		return merchantDao.queryUser(u_id);
	}

	//通过店铺ID查询店铺用户
	@Override
	public Merchant queryMerchant(int m_id) {
		return merchantDao.queryMerchant(m_id);
	}

	//删除店铺
	@Override
	public void deleteMerchant(Merchant merchant) {
		merchantDao.deleteMerchant(merchant);
	}

	//修改店铺
	@Override
	public void updateMerchant(Merchant merchant, Merchant updateMerchant) {
		merchantDao.updateMerchant(merchant, updateMerchant);
	}

}
