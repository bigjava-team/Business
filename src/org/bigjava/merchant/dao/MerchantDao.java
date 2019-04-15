package org.bigjava.merchant.dao;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

/**
 * ���̲���
 * @author Administrator
 *
 */
public interface MerchantDao {
	
	/**
	 * �û�ע�����
	 */
	public void registerMerchant(Merchant merchant, User user);
	
	/**
	 * ͨ������id��ѯ����
	 */
	public Merchant queryMerchant(int m_id);
	
	/**
	 * ɾ������
	 */
	public void deleteMerchant(Merchant merchant);
	
	/**
	 * �޸ĵ�����Ϣ
	 * merchantΪ���ݿ��е�������
	 * updateMerchantΪ�޸ĵĵ�������
	 * 
	 */
	public void updateMerchant(Merchant merchant, Merchant updateMerchant);
	
	/**
	 * ��ӵ��̹���
	 */
	public void addNotice(Merchant merchant);
	
	/**
	 * ɾ������
	 */
	public void updateNotice(Merchant merchant);
	
	/**
	 * ��ѯ��ҵĶ�������
	 */
	public List<Orders> queryListOrders(int m_id);
	
	/**
	 * �޸���ҵĶ�����״̬
	 */
	public void updateOrdersState(Orders orders);
	
	/**
	 *  ͨ���û�id��ѯ����
	 */
	public Merchant queryUidMerchant(int u_id);
	
	/**
	 * ��ѯ��������ǰ5��Ʒ
	 */
	public List<Product> queryProductMerchantTop();
	
	/**
	 * ��ѯ������Ʒ
	 */
	public List<Product> queryProductMerchantTime();
}
