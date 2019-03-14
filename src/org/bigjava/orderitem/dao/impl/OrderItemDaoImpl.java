package org.bigjava.orderitem.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.bigjava.function.Paging;
import org.bigjava.orderitem.dao.OrderItemDao;
import org.bigjava.orderitem.entity.Orderitem;
import org.bigjava.product.entity.Product;
import org.bigjava.user.entity.User;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class OrderItemDaoImpl extends HibernateDaoSupport implements OrderItemDao {

	// ��Ӷ�����
	@Override
	public void addOrderItem(Orderitem orderItem, User user, Product product) {// orderItemΪ��ӵĶ���������ݡ�userΪ��Ӷ�������û���productΪ���������Ʒ
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��addOrderItem����");
		
		orderItem.setUser(user);// ��ȡ�����û������
		orderItem.setProduct(product);// ��ȡ������Ʒ�����
		
		this.getHibernateTemplate().save(orderItem);// ��Ӷ�����
	}

	// ɾ��������
	@Override
	public void deleteOrderItem(Orderitem orderItem) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��deleteOrderItem����");
		this.getHibernateTemplate().delete(orderItem);
	}

	// ͨ��������id��ѯ������
	@Override
	public Orderitem queryOrderItem_id(int item_id) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryOrderItem_id����");
		return this.getHibernateTemplate().get(Orderitem.class, item_id);
	}

	// ��ҳ������ѯ������
	@Override
	public List<Orderitem> queryAllOrderItem(final User user, final Paging page) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryAllOrderItem����");
		List<Orderitem> list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {// ͨ��hibernateTemplate�ص�sessionFactory����
				// TODO Auto-generated method stub
				String hql = "from Orderitem";
				Query query = null;
				if (user.getRoot() == 3) {
					query = session.createQuery(hql);// ����Ա��ѯ�������
				} else {
					hql += " where u_id = ?";
					query = session.createQuery(hql).setInteger(0, user.getU_id());// ��ͨ�û��͵곤��ѯ�������
				}
				query.setFirstResult(page.getStart());// ��ҳ��ѯ����һ����ʼ��
				query.setMaxResults(page.getPagesize());// ��ҳ��ѯ�������

				return query.list();// ����ѯ����ֵת��Ϊ��������
			}
		});
		System.out.println("��ѯ��������" + list);
		return list;
	}

	// ������ѯ��������
	@Override
	public int queryOrderItemNumber(User user) {
		// TODO Auto-generated method stub
		System.out.println("��ʼִ��queryOrderItemNumber����");
		List<Long> listNumber = null;
		int totalNumber = 0;// ��ѯ������������
		String hql = "select count(*) from Orderitem";// ��ѯȫ���Ķ�����
		if (user.getRoot() == 3) {// ����Ա��ѯ�������ʱ
			listNumber = this.getHibernateTemplate().find(hql);
		} else {
			hql += " where u_id = ?";
			listNumber = this.getHibernateTemplate().find(hql, user.getU_id());// 
		}
		if (listNumber.size() !=0 ) {
			totalNumber = listNumber.get(0).intValue();
		}
		System.out.println("��ѯ��"+totalNumber+"��");
		return totalNumber;
	}
	
	

}
