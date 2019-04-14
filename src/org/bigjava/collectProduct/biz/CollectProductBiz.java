package org.bigjava.collectProduct.biz;

import java.util.List;

import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface CollectProductBiz {

	/**
	 * �ղ���Ʒ
	 * collectProductΪ�ղ���Ʒ������
	 * userΪ����User�����
	 * productΪ����Product�����
	 * 
	 */
	public void addCollectProduct(CollectProduct collectProduct);
	
	/**
	 * ɾ���ղص���Ʒ
	 * collectProductΪ�ղص���Ʒ��Ϣ
	 */
	public void deleteCollectProduct(CollectProduct collectProduct);
	
	/**
	 * ͨ���ղ��û���id��ѯ�ղ���Ʒ������
	 * 
	 */
	public boolean queryCollectUser_id(int u_id,int p_id);
	
	/**
	 * ��ҳ��ѯ�ղ���Ʒ��
	 */
	public List<CollectProduct> queryCollectProdct_Uid(int u_id, Paging paging);
	
	/**
	 * ��ѯ�û��ղص���Ʒ��
	 */
	public int queryCollectProduct_number(int u_id);
}
