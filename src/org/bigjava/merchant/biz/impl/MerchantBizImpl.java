package org.bigjava.merchant.biz.impl;

import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

public class MerchantBizImpl implements MerchantBiz {
	
	//ע��MerchantDao
	private MerchantDao merchantDao;
	
	public void setMerchantDao(MerchantDao merchantDao) {
		this.merchantDao = merchantDao;
	}

	//ע�����
	@Override
	public void registerMerchant(Merchant merchant ,  User user) {
		merchantDao.registerMerchant(merchant, user);
	}

	//ͨ������ID��ѯ�����û�
	@Override
	public Merchant queryMerchant(int m_id) {
		return merchantDao.queryMerchant(m_id);
	}

	//ɾ������
	@Override
	public void deleteMerchant(Merchant merchant) {
		merchantDao.deleteMerchant(merchant);
	}

	//�޸ĵ���
	@Override
	public void updateMerchant(Merchant merchant, Merchant updateMerchant) {
		merchantDao.updateMerchant(merchant, updateMerchant);
	}

}
