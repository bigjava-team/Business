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
		System.out.println("开始执行deleteCategory方法" + category);
		this.getHibernateTemplate().delete(category);// 删除一级分类
	}

	// 修改一级分类
	@Override
	public void updateCategory(Category category, Category updateCategory) {
		// TODO Auto-generated method stub
		System.out.println("开始执行updateCategory方法");
		if (updateCategory.getC_name() == null || updateCategory.getC_name().equals("")){// 判断要修改的Category的一级分类名不能为空
			
		} else {
			category.setC_name(updateCategory.getC_name());// 将修改的updateCategory的一级分类set进从数据库中获得的category中
		}
		this.getHibernateTemplate().update(category);// 将Category表的内容修改为category
	}

}
