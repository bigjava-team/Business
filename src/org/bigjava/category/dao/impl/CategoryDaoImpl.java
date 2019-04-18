package org.bigjava.category.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.bigjava.category.dao.CategoryDao;
import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.hibernate.Query;
import org.hibernate.classic.Session;
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
		List<Category> listProduct = this.getHibernateTemplate().find("from Category");// 查询全部的一级分类
		return listProduct;
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

	// 查询一级分类对应的商品
	@Override
	public List<Product> queryC_idCategoryProduct(int c_id, Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryC_idCategoryProduct方法");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Product> listProduct = new ArrayList<Product>();
		List<CategorySecond> listProductSecond = session.createQuery("from CategorySecond where c_id=?").setInteger(0, c_id).list();
		for (int i=0; i<listProductSecond.size(); i++) {
			int number = listProductSecond.get(i).getCs_id();
			List<Product> listProducts = session.createQuery("from Product where cs_id=?").setInteger(0, number).list();
			if (listProducts.size()!=0) {
				for (int j=0; j<listProducts.size(); j++) {
					listProduct.add(listProducts.get(j));
				}
			}
		}
		
		if (paging.getPresentPage() == paging.getPage() && paging.getTotalNumber()%paging.getPagesize()!=0) {
			listProduct = listProduct.subList((paging.getPresentPage()-1)*paging.getPagesize(), (paging.getPresentPage()-1)*paging.getPagesize()+paging.getTotalNumber()%paging.getPagesize());
		} else {
			listProduct = listProduct.subList((paging.getPresentPage()-1)*paging.getPagesize(), paging.getPresentPage()*paging.getPagesize());
		}
		System.out.println("商品"+listProduct);
		return listProduct.size()!=0 ? listProduct : null;
	}

	// 查询一级分类对应的商品数量
	@Override
	public int queryC_idCategoryProductNumber(int c_id) {
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<Long> listProduct;
		int number = 0;
		List<CategorySecond> listProductSecond = session.createQuery("from CategorySecond where c_id=?").setInteger(0, c_id).list();
		for (int i=0; i<listProductSecond.size(); i++) {
			int numbers= listProductSecond.get(i).getCs_id();
			listProduct = session.createQuery("select count(*) from Product where cs_id=?").setInteger(0, numbers).list();
			if (listProduct.size()!=0) {
				for (int j=0; j<listProduct.size(); j++) {
					number += listProduct.get(0).intValue();
				}
			}
		}
		System.out.println("商品数"+number);
		return number;
	}

}
