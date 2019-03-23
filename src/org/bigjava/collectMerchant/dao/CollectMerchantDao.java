package org.bigjava.collectMerchant.dao;

import java.util.List;

import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

public interface CollectMerchantDao {
	
	/**
	 * 收藏店铺
	 * collectMerchant为收藏店铺表的内容
	 * user为收藏店铺的用户
	 * merchant为收藏的店铺
	 * 
	 */
	public void addCollectMerchant(CollectMerchant collectMerchant, User user, Merchant merchant);
	
	/**
	 * 删除收藏的店铺
	 * collectMerchant为需要删除的收藏的店铺
	 * 
	 */
	public void deleteCollectMerchant(CollectMerchant collectMerchant);
	
	/**
	 * 通过收藏店铺的id查询收藏店铺的内容
	 * CM_id为收藏店铺表的id主键
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
	
}
