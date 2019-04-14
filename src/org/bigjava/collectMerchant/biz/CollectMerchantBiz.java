package org.bigjava.collectMerchant.biz;

import java.util.List;

import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;

public interface CollectMerchantBiz {

	/**
	 * �ղص���
	 * collectMerchantΪ�ղص��̱������
	 * userΪ�ղص��̵��û�
	 * merchantΪ�ղصĵ���
	 * 
	 */
	public void addCollectMerchant(CollectMerchant collectMerchant);
	
	/**
	 * ɾ���ղصĵ���
	 * collectMerchantΪ��Ҫɾ�����ղصĵ���
	 * 
	 */
	public void deleteCollectMerchant(CollectMerchant collectMerchant);
	
	/**
	 * ͨ���ղص��̵�id��ѯ�ղص��̵�����
	 * 
	 */
	public CollectMerchant queryCollectMerchant_id(int CM_id);
	
	/**
	 * ͨ���ղص��̱�����u_id��ҳ��ȡ�ղصĵ���
	 * u_idΪ��¼���û�
	 * 
	 */
	public List<CollectMerchant> queryCollectMerchant_Uid(int u_id, Paging paging);
	
	/**
	 * ͨ���ղص��̱�����u_id��ҳ��ȡ�ղصĵ��̵�����
	 * 
	 */
	public int queryCollectMerchant_number(int u_id);
	
	/**
	 * ͨ���ղص����û���id���ղص��̵�id��ȡ�ղص���Ϣ,�����ж������ղش˵���
	 */
	public boolean queryUserMerchantCollectMerchant(int u_id, int m_id);
}
