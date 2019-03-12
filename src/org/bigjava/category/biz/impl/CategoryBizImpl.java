package org.bigjava.category.biz.impl;

import java.util.List;

import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;

public class CategoryBizImpl implements CategoryBiz {

	// 注入CategoryDao
	private CategoryDao categoryDao;

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	//添加一级分类
	@Override
	public void saveCategory(Category category) {
		categoryDao.addCategory(category);
	}

	//展示全部一级分类
	@Override
	public List<Category> showAllCategory() {
		return categoryDao.queryAllCategory();
	}

	@Override
	public Category queryCategoryById(int c_id) {
		return categoryDao.queryCategory(c_id);
	}

	@Override
	public void deleteCategory(Category category) {
		categoryDao.deleteCategory(category);
	}

}
