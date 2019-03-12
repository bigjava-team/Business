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
	public List<Product> queryAllProduct(String searchProduct, Paging page);
	
	/**
	 * ģ����ѯ��Ʒ��������
	 */
	public int queryProductNumber(String searchProduct);
	
}
