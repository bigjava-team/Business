package org.bigjava.categorysecond.biz.impl;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;

public class CategorySecondBizImpl implements CategorySecondBiz {

	// ע��categorySecondDao
	private CategorySecondDao categorySecondDao;

	public void setCategorySecondDao(CategorySecondDao categorySecondDao) {
		this.categorySecondDao = categorySecondDao;
	}

	// ��Ӷ�������
	@Override
	public void saveCategorySecond(CategorySecond categorySecond, Category category) {
		categorySecondDao.addCategorySecond(categorySecond, category);
	}

	// ģ����ҳ��ѯ���ж�������
	@Override
	public List<CategorySecond> queryAllCategorySecond(String searchCategorySecond, Paging page) {
		return categorySecondDao.queryAllCategorySecond(searchCategorySecond, page);
	}

	// ģ����ѯ���������������
	@Override
	public int queryCategorySecondNumber(String searchCategorySecond) {
		return categorySecondDao.queryCategorySecondNumber(searchCategorySecond);
	}

	// ͨ��id��ѯ��Ӧ�Ķ�������
	@Override
	public CategorySecond queryCategorySecond(int cs_id) {
		return categorySecondDao.queryCategorySecond(cs_id);
	}

	// ɾ��
	@Override
	public void deleteCategorySecond(CategorySecond categorySecond) {
		categorySecondDao.deleteCategorySecond(categorySecond);
	}

	// �޸�
	@Override
	public void updateCategorySecond(CategorySecond categorySecond , CategorySecond updatecategorySecond ) {
		categorySecondDao.updateCategorySecond(categorySecond, updatecategorySecond);;
	}

}
