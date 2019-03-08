package org.bigjava.category.dao;

import java.util.List;

import org.bigjava.category.entity.Category;

public interface CategoryDao {
	
	/**
	 * 添加一级分类
	 */
	public void addCategory(Category category);
	
	/**
	 * 查询所有一级分类
	 */
	public List<Category> queryAllCategory();
	
	/**
	 * 通过id查询对应的一级分类
	 */
	public Category queryCategory(int c_id);
	
	/**
	 * 删除一级分类
	 */
	public void deleteCategory(Category category);
	
}
