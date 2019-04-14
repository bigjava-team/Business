package org.bigjava.category.dao;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.product.entity.Product;

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
	
	/**
	 * 修改一级分类
	 * category为数据库的一级分类
	 * updateCateogry为修改的一级分类
	 * 
	 */
	public void updateCategory(Category category, Category updateCategory);
	
	/**
	 * 通过一级分类id分页查询一级分类商品
	 */
	public List<Product> queryC_idCategoryProduct(int c_id,int presentPage);
	
}
