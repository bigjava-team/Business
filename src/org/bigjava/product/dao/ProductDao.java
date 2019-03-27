package org.bigjava.product.dao;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.entity.Product;

public interface ProductDao {

	/**
	 * �����Ʒ
	 */
	public void addProduct(Product product, Merchant merchant, CategorySecond categorySecond);
	
	/**
	 * ͨ����Ʒid��ѯ��Ʒ
	 */
	public Product queryProduct_id(int p_id);
	
	/**
	 * �޸���Ʒ����
	 */
	public void updateProduct(Product product, Product updateProduct);
	
	/**
	 * ģ����ҳ��ѯ������Ʒ
	 */
	public List<Product> queryAllProduct(String searchProduct, Paging page, int m_id);
	
	/**
	 * ģ����ѯ��Ʒ��������
	 * searchProductΪ�������������Ʒ��Ϣ 
	 * m_idΪ��Ʒ��Ӧ�ĵ���id
	 */
	public int queryProductNumber(String searchProduct, int m_id);
	
	/**
	 * ��ѯ���µ�10����Ʒ
	 * 
	 */
	public List<Product> queryProduct_time();
	
	/**
	 * ��ѯ���ȵ�10����Ʒ
	 * 
	 */
	public List<Product> queryProduct_hot();
	
}
