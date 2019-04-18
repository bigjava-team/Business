package org.bigjava.categorysecond.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.function.queryCategorySecond.QueryAllCategorySecond;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CategorySecondDaoImpl extends HibernateDaoSupport implements CategorySecondDao {

	// 添加二级分类
	@Override
//	public void addCategorySecond(CategorySecond categorySecond, Category category) {
//		System.out.println("开始执行addCategorySecond方法");
//		categorySecond.setCategory(category);
//		this.getHibernateTemplate().save(categorySecond);// 添加二级分类名
//	}

	public void addCategorySecond(CategorySecond categorySecond) {
		System.out.println("开始执行addCategorySecond方法");
		this.getHibernateTemplate().save(categorySecond);// 添加二级分类名
	}

	// 模糊分页查询所有二级分类
	@Override
	public List<CategorySecond> queryAllCategorySecond(final String searchCategorySecond, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllCategorySecond方法");
		List<CategorySecond> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				Query query = session.createQuery("from CategorySecond where cs_name like ?").setString(0,
						"%" + searchCategorySecond + "%");// 模糊查询
				query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
				query.setMaxResults(page.getPagesize());// 分页查询查多少条

				return query.list();// 将查询到的值转换为数组类型
			}
		});
		System.out.println("模糊分页查询到的数据" + list);
		return list;
	}

	// 模糊查询所有二级分类总条数
	@Override
	public int queryCategorySecondNumber(String searchCategorySecond) {
		System.out.println("开始执行queryCategorySecondNumber方法");
		int totalNumber = 0;
		List<Long> list = this.getHibernateTemplate().find("select count(*) from CategorySecond where cs_name like ?",
				searchCategorySecond + "%");// 模糊查询一共有多少条数据
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// 获取查询到的数据条数
		}
		System.out.println("查询到的总条数" + totalNumber);
		return totalNumber;
	}

	// 通过id查询二级分类
	@Override
	public CategorySecond queryCategorySecond(int cs_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCategorySecond方法");
		return this.getHibernateTemplate().get(CategorySecond.class, cs_id);
	}

	// 删除二级分类
	@Override
	public void deleteCategorySecond(CategorySecond categorySecond) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteCategorySecond方法");
		this.getHibernateTemplate().delete(categorySecond);
	}

	// 修改二级分类
	@Override
	public void updateCategorySecond(CategorySecond categorySecond) {// categorySecond为修改的二级分类数据
		// TODO Auto-generated method stub
		System.out.println("开始执行updateCategorySecond方法");
		this.getHibernateTemplate().update(categorySecond);
	}

	// 查询全部二级分类
	@Override
	public List<QueryAllCategorySecond> showCategorySecond() {
		// TODO Auto-generated method stub
		List<Category> listCategory = this.getHibernateTemplate().find("from Category");
		List<QueryAllCategorySecond> listCategorySecond = new ArrayList<QueryAllCategorySecond>();
		
		for (int i=0; i<listCategory.size(); i++) {
			List<CategorySecond> listCategorySecond2 = this.getHibernateTemplate().find("from CategorySecond where c_id = ?", listCategory.get(i).getC_id());
			QueryAllCategorySecond queryCS = new QueryAllCategorySecond();
			queryCS.setListCategorySecond(listCategorySecond2);
			listCategorySecond.add(queryCS);
		}
		return listCategorySecond;
	}

	// 用CategorySecond接收全部的二级份类
	@Override
	public List<CategorySecond> showAllCategorySecond() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from CategorySecond");
	}

	
	// 分页查询二级分类对应的商品
	@Override
	public List<Product> cs_idQueryAllCategorySecondProduct(int cs_id,int presentPage) {
		// TODO Auto-generated method stub
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("from Product where cs_id=?").setInteger(0, cs_id);
		System.out.println("数量"+query.list().size());
		Paging paging = new Paging(presentPage, query.list().size(), 10);
		query.setFirstResult(paging.getStart());
		query.setMaxResults(paging.getPagesize());
		return query.list();
	}

	// 模糊分页查询商品信息
	@Override
	public List<Product> searchTextQueryProduct(String searchText, int presentPage) {
		// TODO Auto-generated method stub
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("from Product where p_name like ?").setString(0, "%"+searchText+"%");
		System.out.println("数量"+query.list().size());
		Paging paging = new Paging(presentPage, query.list().size(), 10);
		query.setFirstResult(paging.getStart());
		query.setMaxResults(paging.getPagesize());
		return query.list();
	}

	// 通过一级分类id查询所有二级分类
	@Override
	public List<CategorySecond> cIdQueryCategorySecond(int c_id) {
		List<CategorySecond> listCategory = this.getHibernateTemplate().find("from CategorySecond where c_id = ?", c_id);
		return listCategory;
	}

}
