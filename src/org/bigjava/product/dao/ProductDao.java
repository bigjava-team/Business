package org.bigjava.product.dao;

import java.util.List;
import java.util.Set;

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
	 * 下架商品
	 */
	public void deleteProduct(Product product);
	
	/**
	 * 修改商品内容
	 */
	public void updateProduct(Product product, Product updateProduct);
	
	/**
	 * 模糊分页查询所有商品
	 */
	public List<Product> queryAllProduct(String searchProduct, Paging page, int m_id, int p_freeze);
	
	/**
	 * 模糊查询商品的总条数
	 * searchProduct为搜索框输入的商品信息 
	 * m_id为商品对应的店铺id
	 */
	public int queryProductNumber(String searchProduct, int m_id, int p_freeze);
	
	/**
	 * 查询最新的商品
	 * 
	 */
	public List<Product> queryProduct_time();
	
	/**
	 * 查询最热的商品
	 * 
	 */
	public List<Product> queryProduct_hot();
	
	/**
	 * 查询全部的商品
	 */
	public List<Product> queryAllCommentProduct();
	
	/**
	 * 查询店铺内最新的商品
	 */
	public List<Product> queryMerchantProduct_time(int m_id);
	
	/**
	 * 查询店铺内最热的商品
	 */
	public List<Product> queryMerchantProduct_hot(int m_id);
	
	/**
	 * 查询店铺内最新的商品
	 */
	public List<Product> setQueryMerchantProduct_time(int m_id);
	
	/**
	 * 通过二级分类获取商品
	 */
	public Product csIdQueryProduct(int cs_id);
	
	/**
	 * 购买商品减少库存、增加月销量
	 */
	public void payProductUpdateVolumeRepertory(Product product);
	
}
