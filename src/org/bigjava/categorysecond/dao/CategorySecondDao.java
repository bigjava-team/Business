package org.bigjava.categorysecond.dao;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

public interface CategorySecondDao {
	
	/**
	 * 添加二级分类
	 */
//	public void addCategorySecond(CategorySecond categorySecond, Category category);
	public void addCategorySecond(CategorySecond categorySecond);
	
	/**
	 * 模糊分页查询所有二级分类
	 */
	public List<CategorySecond> queryAllCategorySecond(String searchCategorySecond, Paging page);
	
	/**
	 * 模糊查询二级分类的总条数
	 */
	public int queryCategorySecondNumber(String searchCategorySecond);
	
	/**
	 * 通过id查询对应的二级分类
	 */
	public CategorySecond queryCategorySecond(int cs_id);
	
	/**
	 * 删除二级分类
	 */
	public void deleteCategorySecond(CategorySecond categorySecond);
	
	/**
	 * 修改二级分类名
	 * categorySecond为数据库中的二级分类数据
	 * updatecategorySecond为修改的二级分类数据
	 * 
	 */
	public void updateCategorySecond(CategorySecond categorySecond, CategorySecond updatecategorySecond);
	
	/**
	 * 查询全部二级分类
	 */
	public List<CategorySecond> showCategorySecond(CategorySecond categorySecond);

}
