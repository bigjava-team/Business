package org.bigjava.product.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.bigjava.categorysecond.entity.CategorySecond;
import org.bigjava.function.Paging;
import org.bigjava.image.entity.Images;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.product.dao.ProductDao;
import org.bigjava.product.entity.Product;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ProductDaoImpl extends HibernateDaoSupport implements ProductDao {

	// 添加商品
	@Override
	public void addProduct(Product product, Merchant merchant, CategorySecond categorySecond) {// product为商品内容、merchant为添加商品的店铺、categorySecond为添加的商品属于哪个二级分类
		// TODO Auto-generated method stub
		System.out.println("开始添加商品");

		product.setMerchant(merchant);// 添加外键id
		product.setCategorySecond(categorySecond);// 添加二级分类外键id

		this.getHibernateTemplate().save(product);// 添加商品
	}

	// 通过商品id查询商品
	@Override
	public Product queryProduct_id(int p_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryProduct_id方法");
		Product product = this.getHibernateTemplate().get(Product.class, p_id);// 通过商品id查询商品内容
		System.out.println(product);
		return product;
	}

	// 修改商品内容
	@Override
	public void updateProduct(Product product, Product updateProduct) {// product为数据库中的商品内容、updateProduct为修改的商品内容
		// TODO Auto-generated method stub
		System.out.println("开始执行updateProduct方法");

		if (updateProduct.getP_name() == null || updateProduct.getP_name().equals("")) {// 判断修改的商品名不能为空
		} else {
			product.setP_name(updateProduct.getP_name());// 将修改的商品名替换数据库中的商品名
		}

		if (updateProduct.getP_price() == null || updateProduct.getP_price().equals("")) {// 判断修改的商品单价不能为空
		} else {
			product.setP_price(updateProduct.getP_price());// 将修改的商品单价替换数据库中的商品单价
		}

		if (updateProduct.getMarket() == null || updateProduct.getMarket().equals("")) {// 判断修改的商品市场价格不能为空
		} else {
			product.setMarket(updateProduct.getMarket());// 将修改的商品市场价格替换数据库中的商品市场价格
		}

		if (updateProduct.getP_desc() == null || updateProduct.getP_desc().equals("")) {// 判断修改的商品描述不能为空
		} else {
			product.setP_desc(updateProduct.getP_desc());// 将修改的商品描述替换数据库中的商品描述
		}

		if (updateProduct.getSale_volume() == 0) {// 判断修改的商品月售量不能为空
		} else {
			product.setSale_volume(updateProduct.getSale_volume());// 将修改的商品月售量替换数据库中的商品月售量
		}

		if (updateProduct.getP_date() == null || updateProduct.getP_date().equals("")) {// 判断修改的商品上架时间不能为空
		} else {
			product.setP_date(updateProduct.getP_date());// 将修改的商品上架时间替换数据库中的商品上架时间
		}

		if (updateProduct.getP_freeze() == 0) {// 判断修改的商品上架状态不能为空
		} else {
			product.setP_freeze(updateProduct.getP_freeze());// 将修改的状态
		}

		this.getHibernateTemplate().update(product);
	}

	// 模糊分页查询所有二级分类
	@Override
	public List<Product> queryAllProduct(final String searchProduct, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllProduct方法");
		List<Product> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				Query query = session.createQuery("from Product where p_name like ?").setString(0, searchProduct + "%");// 模糊查询
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
	public int queryProductNumber(String searchProduct) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryProductNumber方法");
		int totalNumber = 0;
		List<Long> list = this.getHibernateTemplate().find("select count(*) from Product where p_name like ?",
				searchProduct + "%");// 模糊查询一共有多少条数据
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// 获取查询到的数据条数
		}
		System.out.println("查询到的总条数" + totalNumber);
		return totalNumber;
	}

	// 查询最新的10件商品
	@Override
	public List<Product> queryProduct_time() {
		// TODO Auto-generated method stub
		System.out.println("查询最新的10件商品");
		
		String hql = "from Product order by p_date desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		list = list.subList(0, 10);
		
		return list;
	}

	// 查询最热的10件商品
	@Override
	public List<Product> queryProduct_hot() {
		// TODO Auto-generated method stub
		System.out.println("查询最热的10件商品");
		
		String hql = "from Product order by sale_volume desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		list.subList(0, 10);
		
		return list;
	}
}
