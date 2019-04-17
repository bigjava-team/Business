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
	public void addCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		System.out.println("开始执行addCollectProduct方法");
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
	public boolean queryCollectUser_id(int u_id,int p_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectUser_id方法");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		List<CollectProduct> list = session.createQuery("from CollectProduct where u_id=? and p_id=?").setInteger(0, u_id).setInteger(1, p_id).list();
		session.close();
		return list.size()>0 ? true : false;
	}

	// 分页查询收藏商品的内容
	@Override
	public List<CollectProduct> queryCollectProdct_Uid(final int u_id, final Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectProduct_Uid方法");
		List<CollectProduct> listCollectProduct = null;
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		String hql = "from CollectProduct where u_id=?";// 通过用户id查询收藏的商品
		Query query = session.createQuery(hql).setInteger(0, u_id);
		query.setFirstResult(paging.getStart());// 从哪一条开始查
		query.setMaxResults(paging.getPagesize());// 每页查询多少条
		listCollectProduct = query.list();
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
