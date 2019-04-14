package org.bigjava.collectMerchant.biz.impl;

import java.util.List;

import org.bigjava.collectMerchant.biz.CollectMerchantBiz;
import org.bigjava.collectMerchant.dao.CollectMerchantDao;
import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

public class CollectMerchantBizImpl implements CollectMerchantBiz {
	
	private CollectMerchantDao collectMerchantDao;
	
	public void setCollectMerchantDao(CollectMerchantDao collectMerchantDao) {
		this.collectMerchantDao = collectMerchantDao;
	}

	// �ղص���
	@Override
	public void addCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		collectMerchantDao.addCollectMerchant(collectMerchant);
	}

	// ɾ���ղصĵ���
	@Override
	public void deleteCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		collectMerchantDao.deleteCollectMerchant(collectMerchant);
	}

	// ͨ���ղص��̵�id��ѯ�ղص��̵�����
	@Override
	public CollectMerchant queryCollectMerchant_id(int CM_id) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryCollectMerchant_id(CM_id);
	}

	// ͨ���ղص��̱�����u_id��ҳ��ȡ�ղصĵ���
	@Override
	public List<CollectMerchant> queryCollectMerchant_Uid(int u_id, Paging paging) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryCollectMerchant_Uid(u_id, paging);
	}

	// ͨ���ղص��̱�����u_id��ҳ��ȡ�ղصĵ��̵�����
	@Override
	public int queryCollectMerchant_number(int u_id) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryCollectMerchant_number(u_id);
	}

	// ͨ���ղص����û���id���ղص��̵�id��ȡ�ղص���Ϣ,�����ж������ղش˵���
	@Override
	public boolean queryUserMerchantCollectMerchant(int u_id, int m_id) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryUserMerchantCollectMerchant(u_id, m_id);
	}

}
