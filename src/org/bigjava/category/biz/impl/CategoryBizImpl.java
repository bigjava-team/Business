package org.bigjava.category.biz.impl;

import java.util.List;

import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;

public class CategoryBizImpl implements CategoryBiz {

	// ע��CategoryDao
	private CategoryDao categoryDao;

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	//���һ������
	@Override
	public void saveCategory(Category category) {
		categoryDao.addCategory(category);
	}

	//չʾȫ��һ������
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
