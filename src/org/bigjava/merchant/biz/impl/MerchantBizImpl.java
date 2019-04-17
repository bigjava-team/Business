package org.bigjava.merchant.biz.impl;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public class MerchantBizImpl implements MerchantBiz {

	// 注入MerchantDao
	private MerchantDao merchantDao;

	public void setMerchantDao(MerchantDao merchantDao) {
		this.merchantDao = merchantDao;
	}

	// 注册店铺
	@Override
	public void registerMerchant(Merchant merchant, User user) {
		merchantDao.registerMerchant(merchant, user);
	}

	// 通过店铺ID查询店铺
	@Override
	public Merchant queryMerchant(int m_id) {
		return merchantDao.queryMerchant(m_id);
	}

	// 删除店铺
	@Override
	public void deleteMerchant(Merchant merchant) {
		merchantDao.deleteMerchant(merchant);
	}

	// 修改店铺
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

	// 修改店铺公告
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

	// 查询最新的商品
	@Override
	public List<Product> queryProductMerchantTime() {
		return merchantDao.queryProductMerchantTime();
	}

	// 查询最热的商品
	@Override
	public List<Product> queryProductMerchantTop() {
		return merchantDao.queryProductMerchantTop();
	}

	// 店长名模糊搜索店铺
	@Override
	public List<Merchant> likeQueryM_name(Paging paging, String searchText, int m_is_freeze) {
		// TODO Auto-generated method stub
		return merchantDao.likeQueryM_name(paging, searchText, m_is_freeze);
	}

	// 店长名模糊搜索店铺数
	@Override
	public int likeQueryM_nameNumber(String searchText,int m_is_freeze) {
		// TODO Auto-generated method stub
		return merchantDao.likeQueryM_nameNumber(searchText,m_is_freeze);
	}

	// 通过店铺id获取对应商品
	@Override
	public List<Product> mIdQueryAllProduct(Paging paging, String searchText, int m_id) {
		return merchantDao.mIdQueryAllProduct(paging, searchText, m_id);
	}

	// 通过店铺id获取对应商品的条数
	@Override
	public int mIdQueryAllProductNumber(String searchText, int m_id) {
		return merchantDao.mIdQueryAllProductNumber(searchText, m_id);
	}

	// 店铺用户名模糊分页查询订单
	@Override
	public List<Orders> merchantLikeUsernameLimitQueryOrders(int m_id, String searchUsername) {
		// TODO Auto-generated method stub
		return merchantDao.merchantLikeUsernameLimitQueryOrders(m_id, searchUsername);
	}

}
