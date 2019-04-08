package org.bigjava.product.biz;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.entity.Product;

public interface ProductBiz {
	
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
	 */
	public int queryProductNumber(String searchProduct, int m_id);
	
	/**
	 * ��ѯ���µ���Ʒ
	 * 
	 */
	public List<Product> queryProduct_time();
	
	/**
	 * ��ѯ���ȵ���Ʒ
	 * 
	 */
	public List<Product> queryProduct_hot();
	
	/**
	 * ��ѯȫ������Ʒ
	 */
	public List<Product> queryAllCommentProduct();
	
	/**
	 * ��ѯ���������µ���Ʒ
	 */
	public List<Product> queryMerchantProduct_time(int m_id);
	
	/**
	 * ��ѯ���������ȵ���Ʒ
	 */
	public List<Product> queryMerchantProduct_hot(int m_id);

}
