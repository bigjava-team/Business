package org.bigjava.merchant.biz.impl;

import java.util.List;

import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
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

	//通过店铺ID查询店铺
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

	/**
	 * 添加店铺公告
	 */
	@Override
	public void addNotice(Merchant merchant) {
		merchantDao.addNotice(merchant);
	}

	// 删除店铺公告
	@Override
	public void updateNotice(Merchant merchant) {
		merchantDao.updateNotice(merchant);
	}

	// 查询买家的订单详情
	@Override
	public List<Orders> queryListOrders(int m_id) {
		// TODO Auto-generated method stub
		return merchantDao.queryListOrders(m_id);
	}

	// 修改买家的订单的状态
	@Override
	public void updateOrdersState(Orders orders) {
		merchantDao.updateOrdersState(orders);
	}

	// 通过用户id查询店铺
	public Merchant queryUidMerchant(int u_id) {
		return merchantDao.queryUidMerchant(u_id);
	}

}
