package org.bigjava.category.biz;

import java.util.List;

import org.bigjava.category.entity.Category;

/**
 * 管理员操作一级分类
 * @author Mr.Man
 *
 */
public interface CategoryBiz {
	
	/**
	 * 添加一级分类
	 */
	public void saveCategory(Category category);
	
	/**
	 * 查询全部一级分类
	 */
	public List<Category> showAllCategory();
	
	/**
	 * 通过ID查询一级分类
	 */
	public Category queryCategoryById(int c_id);
	
	/**
	 * 删除一级分类
	 */
	public void deleteCategory(Category category);

}
