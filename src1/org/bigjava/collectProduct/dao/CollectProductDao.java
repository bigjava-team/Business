package org.bigjava.collectProduct.dao;

import java.util.List;

import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;

public interface CollectProductDao {
	
	/**
	 * �ղ���Ʒ
	 * collectProductΪ�ղ���Ʒ������
	 * userΪ����User�����
	 * productΪ����Product�����
	 * 
	 */
	public void addCollectProduct(CollectProduct collectProduct, User user, Product product);
	
	/**
	 * ɾ���ղص���Ʒ
	 * collectProductΪ�ղص���Ʒ��Ϣ
	 */
	public void deleteCollectProduct(CollectProduct collectProduct);
	
	/**
	 * ͨ���ղ���Ʒ��id��ѯ�ղ���Ʒ������
	 * CP_idΪ����Ʒ������id
	 * 
	 */
	public CollectProduct queryCollectProduct_id(int CP_id);
	
	/**
	 * ��ҳ��ѯ�ղ���Ʒ��
	 */
	public List<CollectProduct> queryCollectProdct_Uid(int u_id, Paging paging);
	
	/**
	 * ��ѯ�û��ղص���Ʒ��
	 */
	public int queryCollectProduct_number(int u_id);

}
