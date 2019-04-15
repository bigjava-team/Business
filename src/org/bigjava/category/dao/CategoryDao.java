package org.bigjava.category.dao;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.product.entity.Product;

public interface CategoryDao {
	
	/**
	 * ���һ������
	 */
	public void addCategory(Category category);
	
	/**
	 * ��ѯ����һ������
	 */
	public List<Category> queryAllCategory();
	
	/**
	 * ͨ��id��ѯ��Ӧ��һ������
	 */
	public Category queryCategory(int c_id);
	
	/**
	 * ɾ��һ������
	 */
	public void deleteCategory(Category category);
	
	/**
	 * �޸�һ������
	 * categoryΪ���ݿ��һ������
	 * updateCateogryΪ�޸ĵ�һ������
	 * 
	 */
	public void updateCategory(Category category, Category updateCategory);
	
	/**
	 * ͨ��һ������id��ҳ��ѯһ��������Ʒ
	 */
	public List<Product> queryC_idCategoryProduct(int c_id,int presentPage);
	
}
