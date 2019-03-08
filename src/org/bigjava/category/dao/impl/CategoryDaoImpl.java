package org.bigjava.category.dao.impl;

import java.util.List;

import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao {

	// 添加一级分类
	@Override
	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		System.out.println("开始添加");
		this.getHibernateTemplate().save(category);// 添加一级分类
	}

	// 查询所有一级分类
	@Override
	public List<Category> queryAllCategory() {
		// TODO Auto-generated method stub
		System.out.println("开始查询一级分类");
		List<Category> listCategory = this.getHibernateTemplate().find("from Category");// 查询全部的一级分类
		System.out.println(listCategory);
		return listCategory;
	}

	// 通过id查询对应的一级分类
	@Override
	public Category queryCategory(int c_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCategory方法");
		Category category = this.getHibernateTemplate().get(Category.class, c_id);// 通过id查询一级分类
		System.out.println(category);
		return category;
	}

	// 删除一级分类
	@Override
	public void deleteCategory(Category category) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteCategory方法");
		this.getHibernateTemplate().delete(category);// 删除一级分类
	}

}
