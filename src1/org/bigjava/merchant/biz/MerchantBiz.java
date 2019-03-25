package org.bigjava.merchant.biz;

import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

/**
 * ���̲���
 * 
 * @author Mr.Man
 *
 */
public interface MerchantBiz {

	/**
	 * �û�����ע��
	 */
	public void registerMerchant(Merchant merchant, User user);

	/**
	 * ͨ������ID��ѯ�����û�
	 */
	public Merchant queryMerchant(int m_id);

	/**
	 * ɾ������
	 */
	public void deleteMerchant(Merchant merchant);

	/**
	 * �޸ĵ���
	 */
	public void updateMerchant(Merchant merchant, Merchant updateMerchant);

}
