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

	// ע��MerchantDao
	private MerchantDao merchantDao;

	public void setMerchantDao(MerchantDao merchantDao) {
		this.merchantDao = merchantDao;
	}

	// ע�����
	@Override
	public void registerMerchant(Merchant merchant, User user) {
		merchantDao.registerMerchant(merchant, user);
	}

	// ͨ������ID��ѯ����
	@Override
	public Merchant queryMerchant(int m_id) {
		return merchantDao.queryMerchant(m_id);
	}

	// ɾ������
	@Override
	public void deleteMerchant(Merchant merchant) {
		merchantDao.deleteMerchant(merchant);
	}

	// �޸ĵ���
	@Override
	public void updateMerchant(Merchant merchant, Merchant updateMerchant) {
		merchantDao.updateMerchant(merchant, updateMerchant);
	}

	/**
	 * ��ӵ��̹���
	 */
	@Override
	public void addNotice(Merchant merchant) {
		merchantDao.addNotice(merchant);
	}

	// �޸ĵ��̹���
	@Override
	public void updateNotice(Merchant merchant) {
		merchantDao.updateNotice(merchant);
	}

	// ��ѯ��ҵĶ�������
	@Override
	public List<Orders> queryListOrders(int m_id) {
		// TODO Auto-generated method stub
		return merchantDao.queryListOrders(m_id);
	}

	// �޸���ҵĶ�����״̬
	@Override
	public void updateOrdersState(Orders orders) {
		merchantDao.updateOrdersState(orders);
	}

	// ͨ���û�id��ѯ����
	public Merchant queryUidMerchant(int u_id) {
		return merchantDao.queryUidMerchant(u_id);
	}

	// ��ѯ���µ���Ʒ
	@Override
	public List<Product> queryProductMerchantTime() {
		return merchantDao.queryProductMerchantTime();
	}

	// ��ѯ���ȵ���Ʒ
	@Override
	public List<Product> queryProductMerchantTop() {
		return merchantDao.queryProductMerchantTop();
	}

	// �곤��ģ����������
	@Override
	public List<Merchant> likeQueryM_name(Paging paging, String searchText, int m_is_freeze) {
		// TODO Auto-generated method stub
		return merchantDao.likeQueryM_name(paging, searchText, m_is_freeze);
	}

	// �곤��ģ������������
	@Override
	public int likeQueryM_nameNumber(String searchText,int m_is_freeze) {
		// TODO Auto-generated method stub
		return merchantDao.likeQueryM_nameNumber(searchText,m_is_freeze);
	}

	// ͨ������id��ȡ��Ӧ��Ʒ
	@Override
	public List<Product> mIdQueryAllProduct(Paging paging, String searchText, int m_id) {
		return merchantDao.mIdQueryAllProduct(paging, searchText, m_id);
	}

	// ͨ������id��ȡ��Ӧ��Ʒ������
	@Override
	public int mIdQueryAllProductNumber(String searchText, int m_id) {
		return merchantDao.mIdQueryAllProductNumber(searchText, m_id);
	}

	// �����û���ģ����ҳ��ѯ����
	@Override
	public List<Orders> merchantLikeUsernameLimitQueryOrders(int m_id, String searchUsername) {
		// TODO Auto-generated method stub
		return merchantDao.merchantLikeUsernameLimitQueryOrders(m_id, searchUsername);
	}

}
