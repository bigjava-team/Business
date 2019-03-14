package org.bigjava.categorysecond.biz.impl;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

public class CategorySecondBizImpl implements CategorySecondBiz {

	// 注入categorySecondDao
	private CategorySecondDao categorySecondDao;

	public void setCategorySecondDao(CategorySecondDao categorySecondDao) {
		this.categorySecondDao = categorySecondDao;
	}

	// 添加二级分类
	@Override
	public void saveCategorySecond(CategorySecond categorySecond, Category category) {
		categorySecondDao.addCategorySecond(categorySecond, category);
	}

	// 模糊分页查询所有二级分类
	@Override
	public List<CategorySecond> queryAllCategorySecond(String searchCategorySecond, Paging page) {
		return categorySecondDao.queryAllCategorySecond(searchCategorySecond, page);
	}

	// 模糊查询二级分类的总条数
	@Override
	public int queryCategorySecondNumber(String searchCategorySecond) {
		return categorySecondDao.queryCategorySecondNumber(searchCategorySecond);
	}

	// 通过id查询对应的二级分类
	@Override
	public CategorySecond queryCategorySecond(int cs_id) {
		return categorySecondDao.queryCategorySecond(cs_id);
	}

	// 删除
	@Override
	public void deleteCategorySecond(CategorySecond categorySecond) {
		categorySecondDao.deleteCategorySecond(categorySecond);
	}

	// 修改
	@Override
	public void updateCategorySecond(CategorySecond categorySecond , CategorySecond updatecategorySecond ) {
		categorySecondDao.updateCategorySecond(categorySecond, updatecategorySecond);;
	}

}
