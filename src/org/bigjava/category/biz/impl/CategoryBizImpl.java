package org.bigjava.category.biz.impl;

import java.util.List;

import org.bigjava.category.biz.CategoryBiz;
import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;

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

	//�޸�
	@Override
	public void updateCategory(Category category, Category updateCategory) {
		categoryDao.updateCategory(category, updateCategory);
	}

	// ��ѯһ�������Ӧ����Ʒ
	@Override
	public List<Product> queryC_idCategoryProduct(int c_id, int presentPage) {
		// TODO Auto-generated method stub
		return categoryDao.queryC_idCategoryProduct(c_id, presentPage);
	}
}
