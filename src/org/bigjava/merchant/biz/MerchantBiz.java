package org.bigjava.merchant.biz;

import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.orders.entity.Orders;
import org.bigjava.product.entity.Product;
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
	 * ��ѯ���µ���Ʒ
	 */
	public List<Product> queryProductMerchantTime();
	
	/**
	 * ��ѯ���ȵ���Ʒ
	 */
	public List<Product> queryProductMerchantTop();
	
	/**
	 * ����Ա��ѯ���е���
	 */
	public List<Merchant> queryAllMerchant(Paging paging);
	
	/**
	 * ����Ա��ѯ���е��̵�����
	 */
	public int queryAllMerchantNumber();
}
