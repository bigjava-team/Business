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

	// �ղ���Ʒ
	@Override
	public void addCollectProduct(CollectProduct collectProduct, User user, Product product) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addCollectProduct����");
		
		collectProduct.setUser(user);// ��������User�����
		collectProduct.setProduct(product);// ��������Product�����
		
		this.getHibernateTemplate().save(collectProduct);// ��collectProduct���ӽ����ݿ�
	}

	// ɾ���ղص���Ʒ
	@Override
	public void deleteCollectProduct(CollectProduct collectProduct) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteCollectProduct����");
		
		this.getHibernateTemplate().delete(collectProduct);
	}

	// ͨ���ղ���Ʒ�� ����id��ѯ
	@Override
	public CollectProduct queryCollectProduct_id(int CP_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCollectProduct_id����");
		
		return this.getHibernateTemplate().get(CollectProduct.class, CP_id);
	}

	// ��ҳ��ѯ�ղ���Ʒ������
	@Override
	public List<CollectProduct> queryCollectProdct_Uid(final int u_id, final Paging paging) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCollectProduct_Uid����");
		List<CollectProduct> listCollectProduct = this.getHibernateTemplate().executeFind(new  HibernateCallback() {

			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				String hql = "from CollectProduct where u_id=?";// ͨ���û�id��ѯ�ղص���Ʒ
				Query query = session.createQuery(hql).setInteger(0, u_id);
				query.setFirstResult(paging.getStart());// ����һ����ʼ��
				query.setMaxResults(paging.getPage());// ÿҳ��ѯ������
				return query.list();
			}
		});
		return listCollectProduct;
	}

	// ��ѯ�ղ���Ʒ������
	@Override
	public int queryCollectProduct_number(int u_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryCollecctProduct_number����");
		String hql = "select count(*) from CollectProduct where u_id = ?";
		int number = 0;// ���ղ�ѯ�����ղص��̵�����
		List<Long> list = this.getHibernateTemplate().find(hql, u_id);// ͨ�����������id��ѯ�û��ղصĵ�������
		if (list.size() != 0 && list != null) {
			number = list.get(0).intValue();
		}
		return number;
	}

}