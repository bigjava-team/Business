package org.bigjava.product.dao;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.entity.Product;

public interface ProductDao {

	/**
	 * 添加商品
	 */
	public void addProduct(Product product, Merchant merchant, CategorySecond categorySecond);
	
	/**
	 * 通过商品id查询商品
	 */
	public Product queryProduct_id(int p_id);
	
	/**
	 * 修改商品内容
	 */
	public void updateProduct(Product product, Product updateProduct);
	
	/**
	 * 模糊分页查询所有商品
	 */
	public List<Product> queryAllProduct(String searchProduct, Paging page);
	
	/**
	 * 模糊查询商品的总条数
	 */
	public int queryProductNumber(String searchProduct);
	
}
