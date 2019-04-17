package org.bigjava.merchant.dao;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
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
	
	/**
	 * �곤��ģ����������
	 */
	public List<Merchant> likeQueryM_name(Paging paging, String searchText, int m_is_freeze);
	
	/**
	 * �곤��ģ������������
	 */
	public int likeQueryM_nameNumber(String searchText,int m_is_freeze);
	
	/**
	 * ͨ������id��ȡ��Ӧ��Ʒ
	 */
	public List<Product> mIdQueryAllProduct(Paging paging, String searchText, int m_id);
	
	/**
	 * ͨ������id��ȡ��Ӧ��Ʒ������
	 */
	public int mIdQueryAllProductNumber(String searchText, int m_id);
	
	/**
	 * �����û���ģ����ҳ��ѯ����
	 */
	public List<Orders> merchantLikeUsernameLimitQueryOrders(int m_id, String searchUsername);
}
