package org.bigjava.merchant.dao;

import org.bigjava.merchant.entity.Merchant;
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
	 * ͨ��id��ѯ�û���Ϣ
	 */
	public User queryUser(int u_id);
	
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
	 * �����Ʒ
	 */
	public void addProduct(Product product, Merchant merchant);

}
