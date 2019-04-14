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

	// 收藏店铺
	@Override
	public void addCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		collectMerchantDao.addCollectMerchant(collectMerchant);
	}

	// 删除收藏的店铺
	@Override
	public void deleteCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		collectMerchantDao.deleteCollectMerchant(collectMerchant);
	}

	// 通过收藏店铺的id查询收藏店铺的内容
	@Override
	public CollectMerchant queryCollectMerchant_id(int CM_id) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryCollectMerchant_id(CM_id);
	}

	// 通过收藏店铺表的外键u_id分页获取收藏的店铺
	@Override
	public List<CollectMerchant> queryCollectMerchant_Uid(int u_id, Paging paging) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryCollectMerchant_Uid(u_id, paging);
	}

	// 通过收藏店铺表的外键u_id分页获取收藏的店铺的数量
	@Override
	public int queryCollectMerchant_number(int u_id) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryCollectMerchant_number(u_id);
	}

	// 通过收藏店铺用户的id和收藏店铺的id获取收藏的信息,用于判断有无收藏此店铺
	@Override
	public boolean queryUserMerchantCollectMerchant(int u_id, int m_id) {
		// TODO Auto-generated method stub
		return collectMerchantDao.queryUserMerchantCollectMerchant(u_id, m_id);
	}

}
