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

	// �ղص���
	@Override
	public void addCollectMerchant(CollectMerchant collectMerchant, User user, Merchant merchant) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��collectMerchant����");
		
		collectMerchant.setUser(user);
		collectMerchant.setMerchant(merchant);
		
		this.getHibernateTemplate().save(collectMerchant);
		
	}

	// ɾ���ղصĵ���
	@Override
	public void deleteCollectMerchant(CollectMerchant collectMerchant) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteCollectMerchant����");
		
		this.getHibernateTemplate().delete(collectMerchant);
	}

	// ͨ���ղص��̵�id��ѯ�ղص��̵�����
	@Override
	public CollectMerchant queryCollectMerchant_id(int CM_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCollectMerchant_id����");
		return this.getHibernateTemplate().get(CollectMerchant.class, CM_id);
	}

	// ��ҳ��ѯ����
	@Override
	public List<CollectMerchant> queryCollectMerchant_Uid(final int u_id,final Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCollectMerchant_Uid����");
		List<CollectMerchant> listCollectMerchant = this.getHibernateTemplate().executeFind(new HibernateCallback() {

			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				String hql = "from CollectMerchant where u_id = ?";
				Query query = session.createQuery(hql).setInteger(0, u_id);
				query.setFirstResult(paging.getStart());
				query.setMaxResults(paging.getPagesize());
				return query.list();
			}
		});
		return listCollectMerchant;
	}

	// ��ѯ���̵�����
	@Override
	public int queryCollectMerchant_number(int u_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCollectMerchant_number����");
		String hql = "select count(*) from CollectMerchant where u_id = ?";
		int number = 0;
		List<Long> listNumber = this.getHibernateTemplate().find(hql, u_id);
		if (listNumber.size() !=0 && listNumber != null) {
			number = listNumber.get(0).intValue();
		}
		return number;
	}

}
