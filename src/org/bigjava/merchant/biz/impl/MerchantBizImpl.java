package org.bigjava.merchant.biz.impl;

import java.util.List;

import org.bigjava.merchant.biz.MerchantBiz;
import org.bigjava.merchant.dao.MerchantDao;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
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

	//ͨ������ID��ѯ����
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

	/**
	 * ��ӵ��̹���
	 */
	@Override
	public void addNotice(Merchant merchant) {
		merchantDao.addNotice(merchant);
	}

	// ɾ�����̹���
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

}
