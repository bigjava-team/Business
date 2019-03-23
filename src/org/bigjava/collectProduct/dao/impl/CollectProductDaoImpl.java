package org.bigjava.collectProduct.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.collectProduct.dao.CollectProductDao;
import org.bigjava.collectProduct.entity.CollectProduct;
import org.bigjava.function.Paging;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CollectProductDaoImpl extends HibernateDaoSupport implements CollectProductDao {

	// 收藏商品
	@Override
	public void addCollectProduct(CollectProduct collectProduct, User user, Product product) {
		// TODO Auto-generated method stub
		System.out.println("开始执行addCollectProduct方法");
		
		collectProduct.setUser(user);// 添加连接User的外键
		collectProduct.setProduct(product);// 添加连接Product的外键
		
		this.getHibernateTemplate().save(collectProduct);// 将collectProduct添加进数据库
	}

	// 删除收藏的商品
	@Override
	public void deleteCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteCollectProduct方法");
		
		this.getHibernateTemplate().delete(collectProduct);
	}

	// 通过收藏商品的 主键id查询
	@Override
	public CollectProduct queryCollectProduct_id(int CP_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectProduct_id方法");
		
		return this.getHibernateTemplate().get(CollectProduct.class, CP_id);
	}

	// 分页查询收藏商品的内容
	@Override
	public List<CollectProduct> queryCollectProdct_Uid(final int u_id, final Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectProduct_Uid方法");
		List<CollectProduct> listCollectProduct = this.getHibernateTemplate().executeFind(new  HibernateCallback() {

			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				String hql = "from CollectProduct where u_id=?";// 通过用户id查询收藏的商品
				Query query = session.createQuery(hql).setInteger(0, u_id);
				query.setFirstResult(paging.getStart());// 从哪一条开始查
				query.setMaxResults(paging.getPage());// 每页查询多少条
				return query.list();
			}
		});
		return listCollectProduct;
	}

	// 查询收藏商品的数量
	@Override
	public int queryCollectProduct_number(int u_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollecctProduct_number方法");
		String hql = "select count(*) from CollectProduct where u_id = ?";
		int number = 0;// 接收查询到的收藏店铺的数量
		List<Long> list = this.getHibernateTemplate().find(hql, u_id);// 通过连接外键的id查询用户收藏的店铺数量
		if (list.size() != 0 && list != null) {
			number = list.get(0).intValue();
		}
		return number;
	}

}
