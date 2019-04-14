package org.bigjava.category.biz;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.product.entity.Product;

/**
 * ����Ա����һ������
 * @author Mr.Man
 *
 */
public interface CategoryBiz {
	
	/**
	 * ���һ������
	 */
	public void saveCategory(Category category);
	
	/**
	 * ��ѯȫ��һ������
	 */
	public List<Category> showAllCategory();
	
	/**
	 * ͨ��ID��ѯһ������
	 */
	public Category queryCategoryById(int c_id);
	
	/**
	 * ɾ��һ������
	 */
	public void deleteCategory(Category category);
	
	/**
	 * �޸�һ������
	 */
	public void updateCategory(Category category, Category updateCategory);
	
	/**
	 * ͨ��һ������id��ҳ��ѯһ��������Ʒ
	 */
	public List<Product> queryC_idCategoryProduct(int c_id,int presentPage);

}
