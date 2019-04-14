package org.bigjava.collectMerchant.biz;

import java.util.List;

import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

public interface CollectMerchantBiz {

	/**
	 * 收藏店铺
	 * collectMerchant为收藏店铺表的内容
	 * user为收藏店铺的用户
	 * merchant为收藏的店铺
	 * 
	 */
	public void addCollectMerchant(CollectMerchant collectMerchant);
	
	/**
	 * 删除收藏的店铺
	 * collectMerchant为需要删除的收藏的店铺
	 * 
	 */
	public void deleteCollectMerchant(CollectMerchant collectMerchant);
	
	/**
	 * 通过收藏店铺的id查询收藏店铺的内容
	 * 
	 */
	public CollectMerchant queryCollectMerchant_id(int CM_id);
	
	/**
	 * 通过收藏店铺表的外键u_id分页获取收藏的店铺
	 * u_id为登录的用户
	 * 
	 */
	public List<CollectMerchant> queryCollectMerchant_Uid(int u_id, Paging paging);
	
	/**
	 * 通过收藏店铺表的外键u_id分页获取收藏的店铺的数量
	 * 
	 */
	public int queryCollectMerchant_number(int u_id);
	
	/**
	 * 通过收藏店铺用户的id和收藏店铺的id获取收藏的信息,用于判断有无收藏此店铺
	 */
	public boolean queryUserMerchantCollectMerchant(int u_id, int m_id);
}
