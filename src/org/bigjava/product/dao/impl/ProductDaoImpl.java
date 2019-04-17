package org.bigjava.product.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = session.createQuery("from Product where p_id=?").setInteger(0, p_id);// 通过商品id查询商品内容
		return (Product) query.list().get(0);
	}
	
	/**
	 * 下架商品
	 */
	public void deleteProduct(Product product) {
		System.out.println("开始执行下架商品deleteProduct方法");
		this.getHibernateTemplate().merge(product);
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
		
		if (updateProduct.getP_image() == null || updateProduct.getP_image().equals("")) {// 判断修改的商品上架时间不能为空
		} else {
			product.setP_image(updateProduct.getP_image());// 将修改的商品上架时间替换数据库中的商品上架时间
		}

		if (updateProduct.getP_freeze() == 0) {// 判断修改的商品上架状态不能为空
		} else {
			product.setP_freeze(updateProduct.getP_freeze());// 将修改的状态
		}

		this.getHibernateTemplate().merge(product);
	}

	// 模糊分页查询所有商品
	@Override
	public List<Product> queryAllProduct(final String searchProduct, final Paging page, final int m_id, final int p_freeze) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryAllProduct方法");
		List<Product> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// 通过hibernateTemplate回调sessionFactory方法
				// TODO Auto-generated method stub
				String hql = "from Product where p_name like ? ";
				Query query = null;
				if (m_id != 0 && p_freeze != 0) {
					hql += " and m_id=? and p_freeze=?";
					query = session.createQuery(hql).setString(0, searchProduct + "%").setInteger(1, m_id).setInteger(2, p_freeze);
				} else if (m_id!=0) {
					hql += "and m_id = ?";
					query = session.createQuery(hql).setString(0, "%"+searchProduct + "%").setInteger(1, m_id);// 模糊查询
				} else if (p_freeze!=0) {
					hql += "and p_freeze = ?";
					query = session.createQuery(hql).setString(0, "%"+searchProduct + "%").setInteger(1, p_freeze);
				} else {
					query = session.createQuery(hql).setString(0, "%"+searchProduct + "%");// 模糊查询
				}
				query.setFirstResult(page.getStart());// 分页查询从哪一条开始查
				query.setMaxResults(page.getPagesize());// 分页查询查多少条

				return query.list();// 将查询到的值转换为数组类型
			}
		});
		System.out.println("模糊分页查询到的数据" + list);
		return list;
	}

	// 模糊查询所有商品
	@Override
	public int queryProductNumber(String searchProduct, int m_id, int p_freeze) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryProductNumber方法");
		int totalNumber = 0;
		String hql = "select count(*) from Product where p_name like ?";
		List<Long> list = null;
		if (m_id != 0 && p_freeze != 0) {
			hql += " and m_id=? and p_freeze=?";
			list = this.getHibernateTemplate().find(hql,new Object[]{'%'+searchProduct+'%', m_id, p_freeze});
		} else if (m_id != 0) {
			hql += " and m_id = ?";
			list = this.getHibernateTemplate().find(hql,
					new Object[]{searchProduct + '%', m_id});// 模糊查询一共有多少条数据
		} else if (p_freeze != 0) {
			hql += " and p_freeze = ?";
			list = this.getHibernateTemplate().find(hql, new Object[]{searchProduct + '%', p_freeze});
		} else {
			list = this.getHibernateTemplate().find(hql,
					searchProduct + '%');// 模糊查询一共有多少条数据
		}
		if (list != null && list.size() != 0) {
			totalNumber = list.get(0).intValue();// 获取查询到的数据条数
		}
		System.out.println("查询到的总条数" + totalNumber);
		return totalNumber;
	}

	// 查询最新的商品
	@Override
	public List<Product> queryProduct_time() {
		System.out.println("查询最新的商品");
		
		String hql = "from Product order by p_date desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		
		return list;
	}

	// 查询最热的商品
	@Override
	public List<Product> queryProduct_hot() {
		System.out.println("查询最热的商品");
		
		String hql = "from Product order by sale_volume desc";
		List<Product> list = new ArrayList<Product>();
		list = this.getHibernateTemplate().find(hql);
		
		return list;
	}

	// 查询全部的商品
	@Override
	public List<Product> queryAllCommentProduct() {
		return this.getHibernateTemplate().find("from Product");
	}

	// 查询店铺内最新的商品
	@Override
	public List<Product> queryMerchantProduct_time(int m_id) {
		System.out.println("查询店铺内最新的商品");
		String hql = "from Product where m_id=? order by p_date desc";
		return (List<Product>) this.getHibernateTemplate().find(hql, m_id);
	}

	// 查询店铺内最热的商品
	@Override
	public List<Product> queryMerchantProduct_hot(int m_id) {
		String hql = "from Product where m_id=? order by sale_volume desc";
		return (List<Product>) this.getHibernateTemplate().find(hql, m_id);
	}

	// 查询店铺内最新的商品
	@Override
	public List<Product> setQueryMerchantProduct_time(int m_id) {
		// TODO Auto-generated method stub
		List<Product> setProduct = this.getHibernateTemplate().find("from Product where m_id=?", m_id);
		return setProduct;
	}

	// 通过二级分类查询商品
	@Override
	public Product csIdQueryProduct(int cs_id) {
		List<Product> list = this.getHibernateTemplate().find("from Product where cs_id=?", cs_id);
		return list.size()>0 ? list.get(0) : null;
	}

	// 购买商品减少库存、增加月销量
	@Override
	public void payProductUpdateVolumeRepertory(Product product) {
		this.getHibernateTemplate().update(product);
	}
}
