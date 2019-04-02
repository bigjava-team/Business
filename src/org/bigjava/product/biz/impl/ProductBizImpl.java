package org.bigjava.product.biz.impl;

import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.dao.ProductDao;
import org.bigjava.product.entity.Product;

public class ProductBizImpl implements ProductBiz {

	// 注入ProductDao
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	// 添加商品
	@Override
	public void addProduct(Product product, Merchant merchant, CategorySecond categorySecond) {
		productDao.addProduct(product, merchant, categorySecond);
	}

	// 根据ID查询商品
	@Override
	public Product queryProduct_id(int p_id) {
		return productDao.queryProduct_id(p_id);
	}

	// 修改商品
	@Override
	public void updateProduct(Product product, Product updateProduct) {
		productDao.updateProduct(product, updateProduct);
	}

	// 模糊分页查询所有商品
	@Override
	public List<Product> queryAllProduct(String searchProduct, Paging page, int m_id) {
		return productDao.queryAllProduct(searchProduct, page, m_id);
	}

	// 模糊查询商品的总条数
	@Override
	public int queryProductNumber(String searchProduct, int m_id) {
		return productDao.queryProductNumber(searchProduct, m_id);
	}

	// 查询最新的6个商品
	@Override
	public List<Product> queryProduct_time() {
		return productDao.queryProduct_time();
	}

	// 查询最热的6个商品
	@Override
	public List<Product> queryProduct_hot() {
		return productDao.queryProduct_hot();
	}

	// 查询全部的商品
	@Override
	public List<Product> queryAllCommentProduct() {
		return productDao.queryAllCommentProduct();
	}

}
