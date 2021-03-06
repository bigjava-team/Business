package org.bigjava.collectMerchant.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.collectMerchant.dao.CollectMerchantDao;
import org.bigjava.collectMerchant.entity.CollectMerchant;
import org.bigjava.function.Paging;
import org.bigjava.merchant.entity.Merchant;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CollectMerchantDaoImpl extends HibernateDaoSupport implements CollectMerchantDao {

	// 收藏店铺
	@Override
	public void addCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		System.out.println("开始执行collectMerchant方法");
		this.getHibernateTemplate().save(collectMerchant);
		
	}

	// 删除收藏的店铺
	@Override
	public void deleteCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		System.out.println("开始执行deleteCollectMerchant方法");
		
		this.getHibernateTemplate().delete(collectMerchant);
	}

	// 通过收藏店铺的id查询收藏店铺的内容
	@Override
	public CollectMerchant queryCollectMerchant_id(int CM_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectMerchant_id方法");
		return this.getHibernateTemplate().get(CollectMerchant.class, CM_id);
	}

	// 分页查询店铺
	@Override
	public List<CollectMerchant> queryCollectMerchant_Uid(final int u_id,final Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectMerchant_Uid方法");
		Session session = this.getHibernateTemplate().getSessionFactory().openSession();
		String hql = "from CollectMerchant where u_id = ?";
		Query query = session.createQuery(hql).setInteger(0, u_id);
		query.setFirstResult(paging.getStart());
		query.setMaxResults(paging.getPagesize());
		List<CollectMerchant> listCollectMerchant = query.list();
		return listCollectMerchant;
	}

	// 查询店铺的数量
	@Override
	public int queryCollectMerchant_number(int u_id) {
		// TODO Auto-generated method stub
		System.out.println("开始执行queryCollectMerchant_number方法");
		String hql = "select count(*) from CollectMerchant where u_id = ?";
		int number = 0;
		List<Long> listNumber = this.getHibernateTemplate().find(hql, u_id);
		if (listNumber.size() !=0 && listNumber != null) {
			number = listNumber.get(0).intValue();
		}
		return number;
	}

	// 通过收藏店铺用户的id和收藏店铺的id获取收藏的信息,用于判断有无收藏此店铺
	@Override
	public boolean queryUserMerchantCollectMerchant(int u_id, int m_id) {
		// TODO Auto-generated method stub
		List<CollectMerchant> listCollectMerchant = this.getHibernateTemplate().find("from CollectMerchant where u_id=? and m_id=?", new Object[]{u_id, m_id});
		return listCollectMerchant.size() > 0 ? true : false;
	}

}
