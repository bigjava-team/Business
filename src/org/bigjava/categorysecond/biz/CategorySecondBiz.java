package org.bigjava.categorysecond.biz;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

public interface CategorySecondBiz {
	
	/**
	 * 添加二级分类
	 */
	public void saveCategorySecond(CategorySecond categorySecond, Category category);

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
	 */
	public void updateCategorySecond(CategorySecond categorySecond , CategorySecond updatecategorySecond);

}
