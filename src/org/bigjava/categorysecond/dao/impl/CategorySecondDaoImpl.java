package org.bigjava.categorysecond.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.category.entity.Category;
import org.bigjava.categorysecond.dao.CategorySecondDao;
import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
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
//	public void updateCategorySecond(CategorySecond categorySecond, CategorySecond updatecategorySecond) {// categorySecond为数据库中的二级分类数据、updatecategorySecond为修改的二级分类数据
//		// TODO Auto-generated method stub
//		System.out.println("开始执行updateCategorySecond方法");
//		if (updatecategorySecond.getCs_name() == null || updatecategorySecond.getCs_name().equals("")) {// 判断修改的店铺用户名不能为空
//			System.out.println("二级分类名为空");
//		} else {
//			if (!updatecategorySecond.getCs_name().equals(categorySecond.getCs_name())) {// 如果修改的店铺用户名与数据库中的店铺用户名不一样将其保存至merchant中
//				categorySecond.setCs_name(updatecategorySecond.getCs_name());
//			}
//		}
//		this.getHibernateTemplate().update(categorySecond);
//	}
	public void updateCategorySecond(CategorySecond categorySecond) {// categorySecond为修改的二级分类数据
		// TODO Auto-generated method stub
		System.out.println("开始执行updateCategorySecond方法");
		this.getHibernateTemplate().update(categorySecond);
	}

	// 查询全部二级分类
	@Override
	public List<CategorySecond> showCategorySecond() {
		// TODO Auto-generated method stub
		System.out.println("开始执行showCategorySecond方法");
		List<CategorySecond> listCategorySecond = this.getHibernateTemplate().find("from CategorySecond");
		return listCategorySecond;
	}

}
