package org.bigjava.product.biz.impl;

import java.util.List;
import java.util.Set;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.biz.ProductBiz;
import org.bigjava.product.dao.ProductDao;
import org.bigjava.product.entity.Product;

public class ProductBizImpl implements ProductBiz {

	// ע��ProductDao
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	// �����Ʒ
	@Override
	public void addProduct(Product product, Merchant merchant, CategorySecond categorySecond) {
		productDao.addProduct(product, merchant, categorySecond);
	}

	// ����ID��ѯ��Ʒ
	@Override
	public Product queryProduct_id(int p_id) {
		return productDao.queryProduct_id(p_id);
	}

	// �޸���Ʒ
	@Override
	public void updateProduct(Product product, Product updateProduct) {
		productDao.updateProduct(product, updateProduct);
	}

	// ģ����ҳ��ѯ������Ʒ
	@Override
	public List<Product> queryAllProduct(String searchProduct, Paging page, int m_id, int p_freeze) {
		return productDao.queryAllProduct(searchProduct, page, m_id, p_freeze);
	}

	// ģ����ѯ��Ʒ��������
	@Override
	public int queryProductNumber(String searchProduct, int m_id, int p_freeze) {
		return productDao.queryProductNumber(searchProduct, m_id, p_freeze);
	}

	// ��ѯ���µ���Ʒ
	@Override
	public List<Product> queryProduct_time() {
		return productDao.queryProduct_time();
	}

	// ��ѯ���ȵ���Ʒ
	@Override
	public List<Product> queryProduct_hot() {
		return productDao.queryProduct_hot();
	}

	// ��ѯȫ������Ʒ
	@Override
	public List<Product> queryAllCommentProduct() {
		return productDao.queryAllCommentProduct();
	}

	// ��ѯ���������µ���Ʒ
	@Override
	public List<Product> queryMerchantProduct_time(int m_id) {
		return productDao.queryMerchantProduct_time(m_id);
	}

	// ��ѯ���������ȵ���Ʒ
	@Override
	public List<Product> queryMerchantProduct_hot(int m_id) {
		return productDao.queryMerchantProduct_hot(m_id);
	}

	//�¼���Ʒ
	@Override
	public void deleteProduct(Product product) {
		productDao.deleteProduct(product);
	}

	// ��ѯ���������µ���Ʒ
	@Override
	public List<Product> setQueryMerchantProduct_time(int m_id) {
		// TODO Auto-generated method stub
		return productDao.setQueryMerchantProduct_time(m_id);
	}

	// ͨ�����������ѯ��Ʒ
	@Override
	public Product csIdQueryProduct(int cs_id) {
		return productDao.csIdQueryProduct(cs_id);
	}

	// ������Ʒ���ٿ�桢����������
	@Override
	public void payProductUpdateVolumeRepertory(Product product) {
		productDao.payProductUpdateVolumeRepertory(product);
	}

}
