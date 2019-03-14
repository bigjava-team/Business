package org.bigjava.category.biz;

import java.util.List;

import org.bigjava.category.entity.Category;

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

}
