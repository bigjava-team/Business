package org.bigjava.categorysecond.biz.impl;

import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.biz.CategorySecondBiz;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.function.queryCategorySecond.QueryAllCategorySecond;
import org.bigjava.product.entity.Product;

public class CategorySecondBizImpl implements CategorySecondBiz {

	// 注入categorySecondDao
	private CategorySecondDao categorySecondDao;

	public void setCategorySecondDao(CategorySecondDao categorySecondDao) {
		this.categorySecondDao = categorySecondDao;
	}

	// 添加二级分类
	@Override
//	public void saveCategorySecond(CategorySecond categorySecond, Category category) {
//		categorySecondDao.addCategorySecond(categorySecond, category);
//	}
	public void saveCategorySecond(CategorySecond categorySecond) {
		categorySecondDao.addCategorySecond(categorySecond);
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
//	public void updateCategorySecond(CategorySecond categorySecond , CategorySecond updatecategorySecond ) {
//		categorySecondDao.updateCategorySecond(categorySecond, updatecategorySecond);;
//	}
	public void updateCategorySecond(CategorySecond categorySecond) {
		categorySecondDao.updateCategorySecond(categorySecond);;
	}

	@Override
	public List<QueryAllCategorySecond> showCategorySecond() {
		// TODO Auto-generated method stub
		return categorySecondDao.showCategorySecond();
	}

	// 用CategorySecond接收全部的二级份类
	@Override
	public List<CategorySecond> showAllCategorySecond() {
		// TODO Auto-generated method stub
		return categorySecondDao.showAllCategorySecond();
	}

	// 分页查询二级分类对应的商品
	@Override
	public List<Product> cs_idQueryAllCategorySecondProduct(int cs_id, Paging paging) {
		// TODO Auto-generated method stub
		return categorySecondDao.cs_idQueryAllCategorySecondProduct(cs_id, paging);
	}

	// 模糊分页查询商品内容
	@Override
	public List<Product> searchTextQueryProduct(String searchText,Paging paging) {
		// TODO Auto-generated method stub
		return categorySecondDao.searchTextQueryProduct(searchText, paging);
	}

	// 模糊分页查询商品内容数量
	@Override
	public int searchTextQueryProductNumber(String searchText) {
		return categorySecondDao.searchTextQueryProductNumber(searchText);
	}
	
	// 通过一级分类id查询所有二级分类
	@Override
	public List<CategorySecond> cIdQueryCategorySecond(int c_id) {
		// TODO Auto-generated method stub
		return categorySecondDao.cIdQueryCategorySecond(c_id);
	}

	@Override
	public int cs_idQueryAllCategorySecondProductNumber(int cs_id) {
		// TODO Auto-generated method stub
		return categorySecondDao.cs_idQueryAllCategorySecondProductNumber(cs_id);
	}

}
